#!/bin/sh
exist() { # file(s)
 test -f $1
}

exist "$1"/ftracetest/[0-9]* && exit 1
