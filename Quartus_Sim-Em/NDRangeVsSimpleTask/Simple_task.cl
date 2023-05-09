__kernel void mmul(
	const int N,
	__global float* A,
	__global float* B,
	__global float* C)
{

    // Remember the unroll pragma #pragma unroll -> especialmente en el pipeline
    float tmp = 0.0;
    for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            tmp = 0.0;
            for(int k = 0; k < N; k++)
            {
                tmp = tmp + A[i*N+k] * B[k*N+j];
            }
            C[i*N+j] = tmp;
        }
    }
}