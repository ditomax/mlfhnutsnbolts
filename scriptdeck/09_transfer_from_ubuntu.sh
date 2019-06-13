#!/bin/bash
ROOT=$HOME/deeplearning/stpoelten19
MODEL=model1

LOCALDIR=$ROOT/$MODEL
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/$MODEL/
rsync -vrzPlpt --exclude='*.pyc' -e "ssh -p 22" $REMOTEDIR $LOCALDIR 

LOCALDIR=$ROOT/scriptdeck/
REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten19/scriptdeck/03_train.sh
rsync -vrzPlpt --exclude='*.pyc' --exclude='events.out.tfevents*' -e "ssh -p 22" $REMOTEDIR $LOCALDIR 

#LOCALDIR=$ROOT/tensorflow/models/research/object_detection/
#REMOTEDIR=dietmar@192.168.3.138:/home/dietmar/deeplearning/stpoelten/tensorflow/models/research/object_detection/object_detection_tutorial_eval.ipynb
#rsync -vrzPlpt --exclude='*.pyc' --exclude='events.out.tfevents*' -e "ssh -p 22" $REMOTEDIR $LOCALDIR 
