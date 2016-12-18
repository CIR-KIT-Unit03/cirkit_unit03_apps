#!/bin/bash

sudo apt-get install -y software-properties-common python-software-properties
yes | sudo apt-add-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl; sudo apt-get update -qq; sudo apt-get install -y libpcl-all;
