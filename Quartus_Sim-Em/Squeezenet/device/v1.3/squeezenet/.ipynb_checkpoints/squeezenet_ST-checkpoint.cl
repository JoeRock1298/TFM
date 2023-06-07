//maxPool2d 
//kernel_size=3 stride=2
//output one feature map per kernel
__kernel void maxpool2d(
	const int input_size,
	const int output_size,
    const int channel_size,
	__global const float* restrict input_im,
    __global float* restrict output_im)
{

    for(int channel_index = 0; channel_index < channel_size; channel_index++)
    {
        //loop over output feature map
        for(int i = 0; i < output_size; i++)//row
        {
            for(int j = 0; j < output_size; j++)//col
            {
                //find the max value in 3x3 reigon 
                //to be one element in the output feature map
                float tmp = 0.0;

                #pragma unroll 1
                for(int k = 0; k < 3; k++)//row
                {
                    #pragma unroll 1
                    for(int l = 0; l < 3; l++)//col
                    {
                        float value = input_im[(i * 2 + k) * input_size  + j * 2 + l ];
                        if(value > tmp)
                            tmp = value;
                    }
                }
                //store the result to output feature map
                output_im[i * output_size + j] = tmp;
            }
        }
    
        input_im += input_size * input_size;
        output_im += output_size * output_size;
    }
}

//3x3 convolution layer
//output one feature map per kernel
__kernel void conv2d3x3(
	const int input_channels, const int input_size,
	const int pad, const int stride,
	const int start_channel, //start_channel is for 1x1 feature map in fire layer
	const int output_size,
    const int filter_size,
	__global const float* restrict input_im,
	__global const float* restrict filter_weight,
	__global const float* restrict filter_bias,
	__global float *restrict output_im
	)
{
	
	//filter_weight += filter_index * input_channels * 9;
	output_im += start_channel * output_size * output_size;
	
	//loop over output feature map
	for(int filter_index = 0; filter_index < filter_size; filter_index++)
	{
        float bias = filter_bias[filter_index];

		for(int i = 0; i < output_size; i++)
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
        
        filter_weight += input_channels * 9;
        output_im += output_size * output_size;
	}
}

//1x1 convolution layer as a single kernel (V5)
//output one feature map per kernel

__kernel void conv2d1x1(
	const int input_channels, 
    const int input_size,
    const int filter_size,
	__global const float* restrict input_im,
	__global const float* restrict filter_weight,
	__global const float* restrict filter_bias,
	__global float *restrict output_im)
{
	// Adding restrict keyword
    //loop over filters
	for(int f_i = 0; f_i < filter_size; f_i++)
	{
        //filter_weight += f_i * input_channels;

        float bias = filter_bias[f_i];
		
        // output_im += input_size * input_size;//start_channel is for 1x1 feature map in fire layer
	
		for(int ij = 0; ij < (input_size * input_size); ij++)
		{
			float tmp = bias;
			// int loc = i * input_size + j; // this is equal to ij

			for(int k = 0; k < input_channels; k++)
			{
				//float8 weight = filter_weight[k];
				//float8 feature;
				tmp += input_im[k * input_size * input_size + ij] * filter_weight[k + f_i * input_channels];
			}
			//add relu after conv
			output_im[ij + (input_size * input_size * f_i)] = (tmp > 0.0) ? tmp : 0.0;
            //output_im[ij] = (tmp > 0.0) ? tmp : 0.0;
		}
        //filter_weight += input_channels;	
        //output_im += input_size * input_size;//start_channel is for 1x1 feature map in fire layer
	
	}
}

//last layer use a 13 x 13 avgPool layer as classifier
//one class score per kernel
__kernel void avgpool2d(
	__global const float* restrict input_im,
	__global float* restrict output_im)
{
	// int class_index = get_global_id(0);//get class score index
    
    //Since it's the final layer, we know that there are only 1000 classes
    
	//input_im += 169 * class_index;

	for(int class_index = 0; class_index < 1000; class_index++)
    {
            
        float tmp = 0.0f;

        for(int i = 0; i < 169; i++)
        {
            tmp += input_im[class_index * 169 + i];
        }

        output_im[class_index] = tmp / 169.0;
    }
}
