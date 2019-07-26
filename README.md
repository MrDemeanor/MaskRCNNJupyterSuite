# MaskRCNNJupyterSuite

## This repo was meant to be run in a docker container to streamline installation across multiple architectures. We highly recommand that you first create a docker container using the included Dockerfile:

```bash
cd docker
docker build -t mask_rcnn:latest .
cd ..
```

## Once in the root directory of the project, run the newly created docker container by exposing port 8888 and mounting the current directory as a volume:

```bash
docker run --runtime=nvidia -it -p 8888:8888 -v "$(pwd)":/home mask_rcnn:latest bash
cd home
```

## Create a virtual environment and install python dependencies:

```bash
virtualenv -p python3 venv
source venv/bin/activate && pip install cython numpy
pip install -r requirements.txt
```

## Launch a jupyter notebook and expose it on port 8888 as well:

```bash
jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root
```

By launching the notebook with the --ip flag set to 0.0.0.0, this allows for your notebook to be accessed from any computer across a network. However, if you are running this on your local computer, then invoking the --ip flag is unnecessary. Take note of the access token that this command grants you. You will need it for when you enter into the notebook. 

## Access notebook on a web browser

If you are running this on your local computer, then navigate to http://localhost:8888. If you are accessing this notebook from a remote location, find the ip address of the server that the notebook is running on and navigate to http://<server_ip>:8888. You will be prompted to enter an access token mentioned above. 

