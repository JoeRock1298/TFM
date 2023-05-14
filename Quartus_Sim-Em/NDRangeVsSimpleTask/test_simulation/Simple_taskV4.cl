__kernel void mmul(
	const int N,
	__global float* restrict A,
	__global float* restrict B,
	__global float* restrict C)
{

    // Remember the unroll pragma #pragma unroll
    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            float tmp = 0.0;
            tmp = 0.0;
            float aux;
            #pragma unroll
            for(int k = 0; k < N; k++)
            {
                aux = A[i*N+k] * B[k*N+j];
                tmp = tmp + aux;
            }
            C[i*N+j] = tmp;
        }
    }
}