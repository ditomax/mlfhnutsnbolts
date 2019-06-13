#!/bin/bash

GT=$HOME/deeplearning/stpoelten19
MD=$GT/models/research/object_detection
MO=model1
MODELPATH=$GT/$MO

cd $MODELPATH

python $MD/model_main.py --pipeline_config_path=$MODELPATH/pipeline_retrain.config --model_dir=$MODELPATH --num_train_steps=60000 --sample_1_of_n_eval_examples=1 --alsologtostderr
