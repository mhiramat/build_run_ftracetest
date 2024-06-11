#!/bin/sh
grep -w "WARNING" $1/runtest.log && exit 1
grep -w "BUG" $1/runtest.log && exit 1
grep -w "Panic" $1/runtest.log && exit 1
