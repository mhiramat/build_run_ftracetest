#!/bin/sh

LOG_DATE=`date +%Y%m%d-%H%M%S`
dmesg > /mnt/dmesg-$LOG_DATE
LOG_DIR=/mnt/logs-$LOG_DATE
cd /mnt/ftrace
./ftracetest --logdir $LOG_DIR
