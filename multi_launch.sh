#!/bin/bash

if [ $# -ne 2 ]; then
  echo "illegal number of parameters"
  exit 1
fi

if [ "$2" -eq "$2" ]; then
  if [ $1 = "cloudlus" ]; then
    bin=/home/mouginot/HTC_sub/cloudlus/cloudlus.sub
    elif [ $1 = "mure_sgl" ]; then
    bin=/home/mouginot/HTC_sub/mure_single/mure_sgl.sub
  else
    echo "Bad program name!!"
    exit 1
  fi
else
  echo "Bad number!!"
  exit 1
fi

condor_submit ${bin} -queue ${2}
