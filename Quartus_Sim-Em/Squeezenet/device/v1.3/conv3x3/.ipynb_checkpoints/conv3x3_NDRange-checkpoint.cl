//3x3 convolution layer
//output one feature map per kernel
__kernel void conv2d3x3(
	const int input_channels, const int input_size,
	const int pad, const int stride,
	const int start_channel, //start_channel is for 1x1 feature map in fire layer
	const int output_size,
	__global const float* restrict input_im,
	__global const float* restrict filter_weight,
	__global const float* restrict filter_bias,
	__global float *restrict output_im
	)
{
	int filter_index = get_global_id(0); //get output channel index
	int i =  get_global_id(1);

	filter_weight += filter_index * input_channels * 9;
	float bias = filter_bias[filter_index];
	output_im += (start_channel + filter_index) * output_size * output_size;
	
	//loop over output feature map
	//for(int i = 0; i < output_size; i++)
	{
		for(int j = 0; j < output_size; j++)
		{
			//compute one element in the output feature map
			float tmp = bias;
			
			//compute dot product of 2 input_channels x 3 x 3 matrix
			for(int k = 0; k < input_channels; k++)
			{
				#pragma unroll
				for(int l = 0; l < 3; l++)
				{
					int h = i * stride + l - pad;
					for(int m = 0; m < 3; m++)
					{
						int w = j * stride + m - pad;
						if((h >= 0) && (h < input_size) && (w >= 0) && (w < input_size))
						{
							tmp += input_im[k * input_size * input_size + h * input_size + w] \
                               * filter_weight[9 * k + 3 * l + m];
						}
					}
				}
			}

			//add relu activation after conv
			output_im[i * output_size + j] = (tmp > 0.0) ? tmp : 0.0;
		}
	}
}
