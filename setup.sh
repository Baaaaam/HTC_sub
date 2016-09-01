#!/bin/bash
cd

if [ ! -d condorht_tools ]; then
  echo "Getting CondorHT Tools"
  git clone git@github.com:Baaaaam/condorht_tools.git
  cd condorht_tools
  git fetch --all
  git checkout cyclus_install
  cd ..
if

