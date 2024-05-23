#!/bin/sh

LOG_DIR=/mnt/logs/latest/
mkdir $LOG_DIR/ftracetest

dmesg > $LOG_DIR/dmesg
cd /mnt/ftrace
./ftracetest --logdir $LOG_DIR/ftracetest
