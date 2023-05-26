//1x1 convolution layer
//output one feature map per kernel
__kernel void conv2d1x1(
	const int input_channels, const int input_size,
	__global float * restrict input_im,
	__global const float4* restrict filter_weight,
	__global const float* restrict filter_bias,
	__global float *restrict output_im)
{
	// Adding restrict keyword
    int filter_index = get_global_id(0); // 0 - (output_channels - 1)
	int i = get_global_id(1);

	filter_weight += filter_index * input_channels;

	float bias = filter_bias[filter_index];
	
	output_im += filter_index * input_size * input_size;//start_channel is for 1x1 feature map in fire layer

	//loop over output feature map
	//for(int i = 0; i < input_size; i++)
	{
		for(int j = 0; j < input_size; j++)
		{
			float tmp = bias;
			int loc = i * input_size + j;

			for(int k = 0; k < input_channels; k++)
			{
				//float8 weight = filter_weight[k];
				//float8 feature;
				tmp += input_im[((k << 2) + 0) * input_size * input_size + loc] * filter_weight[k].s0
				     + input_im[((k << 2) + 1) * input_size * input_size + loc] * filter_weight[k].s1
					 + input_im[((k << 2) + 2) * input_size * input_size + loc] * filter_weight[k].s2
					 + input_im[((k << 2) + 3) * input_size * input_size + loc] * filter_weight[k].s3;
			}
			//add relu after conv
			output_im[loc] = (tmp > 0.0) ? tmp : 0.0;
		}
	}
}
