#!/usr/bin/env python
# coding: utf-8

import numpy as np
import os
import six.moves.urllib as urllib
import sys
import tarfile
import tensorflow as tf
import zipfile
from pathlib import Path

from collections import defaultdict
from io import StringIO
from matplotlib import pyplot as plt
from PIL import Image

from object_detection.utils import ops as utils_ops
from object_detection.utils import dataset_util
from object_detection.utils import label_map_util
from object_detection.utils import visualization_utils as vis_util




flags = tf.app.flags
flags.DEFINE_string('model_dir', '', 'directory for model storage')
FLAGS = flags.FLAGS



def main(_):

    data_dir = FLAGS.model_dir


    # What model to download.
    #MODEL_NAME = 'ssd_mobilenet_v1_coco_2017_11_17'
    #MODEL_NAME = 'ssd_mobilenet_v2_coco_2018_03_29'
    MODEL_NAME = 'ssd_inception_v2_coco_2018_01_28'
    #MODEL_NAME = 'faster_rcnn_resnet101_coco_2018_01_28'
    #MODEL_NAME = 'faster_rcnn_inception_v2_coco_2018_01_28'
    #MODEL_NAME = 'ssdlite_mobilenet_v2_coco_2018_05_09'
    #MODEL_NAME = 'faster_rcnn_resnet50_coco_2018_01_28'
    #MODEL_NAME = 'training1-result'
    
    MODEL_FILE = MODEL_NAME + '.tar.gz'
    DOWNLOAD_BASE = 'http://download.tensorflow.org/models/object_detection/'
    
    model_archive= os.path.join( data_dir, MODEL_FILE )
    
    my_file = Path(model_archive)
    if not my_file.is_file():
        opener = urllib.request.URLopener()
        opener.retrieve(DOWNLOAD_BASE + MODEL_FILE, model_archive )

    tar_file = tarfile.open(model_archive)
    for member in tar_file.getmembers():
        if member.isreg():
            member.name =  os.path.join ( 'base', os.path.basename(member.name) )
            tar_file.extract( member, data_dir )


if __name__ == '__main__':
  tf.app.run()



