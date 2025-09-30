#!/bin/bash

FEEDERDIR="./kuksa-dbc2val/kuksa.val.feeders/dbc2val/"
"$FEEDERDIR"/createvcan.sh vcan0
canplayer vcan0=elmcan -v -I "$FEEDERDIR"/candump.log -l i -g 1