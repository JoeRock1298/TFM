# TFM
OpenCL HLS Implementation of an CNN in FPGA DE10-NANO
This project is part of a final master's degree thesis consisiting on the optimization of an cnn-based image classifier implemented in the Intel DE10-NANO
board by using Intel OpenCL HLS.

## Architectures to choose from for the rest of the project
  - Darknet reference architecture (https://github.com/tirumalnaidu/opencl-hls-cnn-accelerator)
  - SquezzeNet (https://github.com/Er1cZ/Deploying_CNN_on_FPGA_using_OpenCL). The Hands On OpenCL course proposed in this repository requires to use export LD_LIBRARY_PATH="/home/joerock/anaconda3/envs/TFM/lib":$LD_LIBRARY_PATH to work with the exercices properly. IMPORTANT, do not change the .bashrc since a different first path than "usr/lib64" will cause the virtual machine to have a black screen after signing in.
  - Faster R-CNN (http://www.innovatefpga.com/cgi-bin/innovate/teams2018.pl?Id=PR022). Remember to check the Github project because it seems that only 
    VGG-16 and ResNet-50 are supported (Resnet could be a valid option as well)
