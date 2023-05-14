__kernel void mmul(
	const int N,
	__global float* restrict A,
	__global float* restrict B,
	__global float* restrict C)
{
    // Non-nested loops
    for(int i = 0; i < N*N; i++)
    {
        int i_m = i/N;
        int j_m = i%N;
        float tmp = 0.0;
        tmp = 0.0;
        #pragma unroll
        for(int k = 0; k < N; k++)
        {
            tmp = tmp + A[i_m*N+k] * B[k*N+j_m];
        }
        C[i_m*N+j_m] = tmp;
    }
}