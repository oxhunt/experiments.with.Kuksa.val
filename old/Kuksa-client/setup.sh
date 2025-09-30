#!/bin/python

# run kuksa server
docker run -it --rm --net=host ghcr.io/eclipse/kuksa.val/databroker:master --insecure

# (optional) run rust databroker-cli
docker run -it --rm --net=host ghcr.io/eclipse/kuksa.val/databroker-cli:master

# (optional ) run python client cli
docker run -it --rm --net=host ghcr.io/eclipse/kuksa.val/kuksa-client:master

source venv/bin/activate

# install the python client libraries, requires python >=3.8
pip3 install kuksa-client

# install carla libraries of necessary, they require python 3.7
sudo apt install python3.7-distutils
pip3 install carla future numpy pygame matplotlib open3d Pillow agents



# run the two client applications
python3 speed-provider.py
python3 speed-subscriber.py