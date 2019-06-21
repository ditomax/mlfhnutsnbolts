#!/bin/bash

GT=$HOME/deeplearning/stpoelten19
MD=$GT/models/research/object_detection
MO=model1
MODELPATH=$GT/$MO

cd $MODELPATH


# determine youngest model checkpoint
VERSION=2296
#MC=$(ls -t $MO/model.ckpt* -I "*.meta" | cut -c 1-25 | head -1)
MC=$MODELPATH/model.ckpt-$VERSION

rm -r $MODELPATH/result/saved_model
python $MD/export_inference_graph.py --input_type image_tensor --pipeline_config_path $MODELPATH/pipeline_retrain.config --trained_checkpoint_prefix $MC --output_directory $MODELPATH/result


