#!/bin/bash
PYTHON38_ACTIVATE="./kuksa-dbc2val/venv/bin/activate"
source "$PYTHON38_ACTIVATE"

FEEDERDIR="./kuksa-dbc2val/kuksa.val.feeders/dbc2val/"

pip3 install -r "$FEEDERDIR/requirements.txt"
cd $FEEDERDIR
python3 dbcfeeder.py