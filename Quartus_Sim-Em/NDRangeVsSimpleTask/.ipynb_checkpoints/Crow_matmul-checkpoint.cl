__kernel void mmul(const int N,
                   __global float* A,
                   __global float* B,
                   __global float* C)
{
    int j, k;
    int i = get_global_id(0);
    float tmp;

    for(j = 0; j < N; j++)
    {
        tmp = 0.0f; 
        for(k = 0; k < N; k++)
        {
            tmp = tmp + (A[i * N + k] * B[k * N + j]);
        }
        C[i * N + j] = tmp;
    }
}