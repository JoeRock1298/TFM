__kernel void mmul(const int N,
                   __global float* A,
                   __global float* B,
                   __global float* C,
                   __local float *Bwrk)
{
    int j, k;
    int i = get_global_id(0);
    
    int iloc = get_local_id(0);
    int nloc = get_local_size(0);

    float tmp;
    float Awrk[1024];
    // Copying data to the private memory 
    for (k = 0; k < N; k++)
    {
        Awrk[k] = A[i*N+k];
    }
    
    for (j = 0; j < N; j++) 
    {
        barrier(CLK_LOCAL_MEM_FENCE);
        for (k = iloc; k < N; k += nloc)
        {
            Bwrk[k] = B[k*N+j]; // Each work-item in the workgroup takes the column of B in the local memory
        }    
        barrier(CLK_LOCAL_MEM_FENCE); //waits for the copy of the column to be fully completed
        // Afterwards we do the processing
        tmp = 0.0f;
        for (k = 0; k < N; k++)
        {
            tmp += Awrk[k] * Bwrk[k];
        }
        C[i*N+j] = tmp;
        barrier(CLK_LOCAL_MEM_FENCE); // waits for the processing to be done
    }
}