#!/bin/bash
pwd
apt-get install -y software-properties-common python-software-properties
yes | apt-add-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl; apt-get update -qq; apt-get install -y libpcl-all;

rosdep install -i -r -y --from-paths . --ignore-src --rosdistro indigo
cd ..
catkin_make
cd src
