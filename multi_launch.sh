#!/bin/bash

if [ $# -ne 2 ]; then
  echo "illegal number of parameters"
  exit 1
fi

if [ "$2" -eq "$2" ]; then
  if [ $1 = "cloudlus" ]; then
    bin=cloudlus/cloudlus.sub
  else
    echo "Bad program name!!"
    exit 1
  fi
else
  echo "Bad number!!"
  exit 1
fi

for (( c=1; c<=${2}; c++ ))
do
   condor_submit ${bin}
done
