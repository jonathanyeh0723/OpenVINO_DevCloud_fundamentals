#!/bin/bash

# Dir
mkdir -p output

# Exec
exec 1>output/stdout.log 2>output/stderr.log

# Variables
MODELPATH=$1
DEVICE=$2
VIDEO=$3
SAVEPATH=$4

# Run python script
python3 inference.py -m ${MODELPATH} -d ${DEVICE} -i ${VIDEO} -p ${SAVEPATH}
