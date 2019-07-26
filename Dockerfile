FROM nvidia/cuda:10.0-base

RUN apt-get update && apt-get upgrade -y
RUN apt-get install libcupti-dev -y
RUN apt-get install python3-pip -y
RUN apt-get install libxrender-dev -y
RUN apt-get install libsm6 -y
RUN apt-get install git -y

RUN apt-get install libcudnn7=7.4.2.24-1+cuda10.0 -y
RUN apt-get install libcudnn7-devel=7.4.2.24-1+cuda10.0 -y

RUN pip3 install virtualenv
RUN export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}} 
