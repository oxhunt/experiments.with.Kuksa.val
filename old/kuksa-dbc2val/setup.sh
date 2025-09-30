
virtualenv --python="/usr/bin/python3.9" "venv"
source venv/bin/activate
git clone https://github.com/eclipse/kuksa.val.feeders.git
pip3 install -r kuksa.val.feeders/dbc2val/requirements.txt