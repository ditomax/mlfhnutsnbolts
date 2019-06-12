#!/usr/bin/env bash
PROJ=$HOME/deeplearning/stpoelten19
python3 $PROJ/scriptdeck/generate_tfrecords_from_xml.py --data_dir=$PROJ/ground_truth/train --output_path=$PROJ/data/train.tfrecord --set=train --label_map_path=$PROJ/ground_truth/train/nutsnbolts.pbtxt
python3 $PROJ/scriptdeck/generate_tfrecords_from_xml.py --data_dir=$PROJ/ground_truth/test --output_path=$PROJ/data/test.tfrecord --set=test --label_map_path=$PROJ/ground_truth/train/nutsnbolts.pbtxt
