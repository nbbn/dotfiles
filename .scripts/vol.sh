#!/bin/bash

#Print current info about master volume channel, find "Mono", cut the output to what we need;
vol=`amixer get Master | grep "Mono:" | grep -o '\[.*%\]'`
#Echo our output;
echo $vol
