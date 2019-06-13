#!/bin/bash

LOCALDIR=../ground_truth/
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/ground_truth
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $LOCALDIR $REMOTEDIR

LOCALDIR=../data/
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/data
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $LOCALDIR $REMOTEDIR


LOCALDIR=../model1/
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/model1
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $LOCALDIR $REMOTEDIR

