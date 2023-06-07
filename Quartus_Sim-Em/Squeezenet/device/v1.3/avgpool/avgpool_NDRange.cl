//last layer use a 13 x 13 avgPool layer as classifier
//one class score per kernel
__kernel void avgpool2d(
	__global const float* restrict input_im,
	__global float* restrict output_im)
{
	int class_index = get_global_id(0);//get class score index

	input_im += 169 * class_index;
	
	float tmp = 0.0f;

	for(int i = 0; i < 169; i++)
	{
		tmp += input_im[i];
	}

	output_im[class_index] = tmp / 169.0;
}
