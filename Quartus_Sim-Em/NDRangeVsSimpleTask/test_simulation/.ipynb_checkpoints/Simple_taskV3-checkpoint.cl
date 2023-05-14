__kernel void mmul(
	const int N,
    const int i_m,
    const int j_m,
	__global float* restrict A,
	__global float* restrict B,
	__global float* restrict C)
{
    float tmp = 0.0;
    #pragma unroll
    for(int k = 0; k < N; k++)
    {
        tmp = tmp + A[i_m*N+k] * B[k*N+j_m];
    }
    C[i_m*N+j_m] = tmp;
}