#!/bin/bash

yes | sudo apt-add-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl; sudo apt-get update -qq; sudo apt-get install -y libpcl-all;
