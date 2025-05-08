#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
MPLBACKEND=agg \
OMP_NUM_THREADS=1 \
python $(dirname "$0")/test.py \
  $CONFIG \
  $CHECKPOINT \
  --launcher none \
  ${@:3}