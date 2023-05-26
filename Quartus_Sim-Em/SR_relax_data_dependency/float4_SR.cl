//1x1 convolution layer as a single kernel
//output one feature map per kernel
#define II_CYCLES 16

__kernel void conv2d1x1(
	const int input_channels, 
    const int input_size,
    const int filter_size,
	__global float * restrict input_im,
	__global const float4* restrict filter_weight,
	__global const float* restrict filter_bias,
	__global float *restrict output_im)
{
	// Adding restrict keyword
	
	float shift_reg[II_CYCLES + 1];
	for(int i = 0; i < (II_CYCLES + 1); i++)
	{
		shift_reg[i] = 0;
	}
		
    //loop over filters
	for(int f_i = 0; f_i < filter_size; f_i++)
	{
        //filter_weight += f_i * input_channels;

        float bias = filter_bias[f_i];
	
        // output_im += input_size * input_size;//start_channel is for 1x1 feature map in fire layer
	
		for(int ij = 0; ij < (input_size * input_size); ij++)
		{
			// int loc = i * input_size + j; // this is equal to ij

			for(int k = 0; k < input_channels; k++)
			{
				//float8 weight = filter_weight[k];
				//float8 feature;
				shift_reg[II_CYCLES] = shift_reg[0] + input_im[((k << 2) + 0) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s0;
				shift_reg[II_CYCLES - 1] = input_im[((k << 2) + 1) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s1;
				shift_reg[II_CYCLES - 2] = input_im[((k << 2) + 2) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s2;
				shift_reg[II_CYCLES - 3] = input_im[((k << 2) + 3) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s3;
				
				#pragma unroll
				for(int j = 0; j < II_CYCLES; j++)
				{
					shift_reg [j] = shift_reg[j + 1];
				}
				     /*+ input_im[((k << 2) + 1) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s1
					 + input_im[((k << 2) + 2) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s2
					 + input_im[((k << 2) + 3) * input_size * input_size + ij] * filter_weight[k + f_i * input_channels].s3;*/
                /*tmp += input_im[((k << 2) + 0) * input_size * input_size + ij] * filter_weight[k].s0
				     + input_im[((k << 2) + 1) * input_size * input_size + ij] * filter_weight[k].s1
					 + input_im[((k << 2) + 2) * input_size * input_size + ij] * filter_weight[k].s2
					 + input_im[((k << 2) + 3) * input_size * input_size + ij] * filter_weight[k].s3;*/
			}
			//add relu after conv
			float tmp = bias;
			
			#pragma unroll
			for(int i = 0; i < II_CYCLES; i++)
			{
				tmp += shift_reg[i];
			}
			
			output_im[ij + (input_size * input_size * f_i)] = (tmp > 0.0) ? tmp : 0.0;
            //output_im[ij] = (tmp > 0.0) ? tmp : 0.0;
		}
        //filter_weight += input_channels;	
        //output_im += input_size * input_size;//start_channel is for 1x1 feature map in fire layer
	
	}
}
