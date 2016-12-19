#!/bin/bash

# Clone cirkit_unit03_pkgs repository
git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_pkgs.git ../cirkit_unit03_pkgs

# Download required packages by wstool.
wstool init ../
wstool merge -t ../ ../cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
wstool merge -t ../ ../cirkit_unit03_apps/cirkit_unit03_apps.rosinstall
wstool update -t ../

# Download depended packages by rosdep.
#sudo rosdep init
#rosdep update
rosdep install -i -r -y --from-paths ../ --ignore-src

# Build packages, and set the path for the packages.
cd ../../
catkin_make
source devel/setup.bash

# Option -t enables test
while getopts t OPT
do
  case $OPT in
    "t" ) FLG_A="TRUE" ;;
      * ) echo "Usage: $CMDNAME [-t]" 1>&2
          exit 1 ;;
  esac
done

if [ "$FLG_A" = "TRUE" ]; then
  catkin_make run_tests
  catkin_test_results
fi
