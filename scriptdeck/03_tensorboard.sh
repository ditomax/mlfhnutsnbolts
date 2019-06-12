#!/usr/bin/env bash
PROJ=$HOME/deeplearning/stpoelten19
MODELPATH=$PROJ/model1
tensorboard --port 8080 --logdir $MODELPATH
