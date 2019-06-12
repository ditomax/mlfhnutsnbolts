#!/bin/bash

LOCALDIR=../ground_truth/
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/ground_truth
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $LOCALDIR $REMOTEDIR

LOCALDIR=./
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/scriptdeck
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $LOCALDIR $REMOTEDIR

