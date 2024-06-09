#!/bin/sh
grep -q "WARNING" $1/runtest.log && exit 1
grep -q "BUG" $1/runtest.log && exit 1
grep -q "Panic" $1/runtest.log && exit 1
