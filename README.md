# cirkit_unit03_apps [![Build Status](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_apps.svg?branch)](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_apps) [![Slack](https://img.shields.io/badge/Slack-CIR--KIT-blue.svg)](http://cir-kit.slack.com/messages/unit03_apps)
Application packages for CIR-KIT-Unit03

## About
This repository is the application package for CIR-KIT-Unit03.  
Therefore, you **NEED TO INSTALL [cirkit_unit03_pkgs](https://github.com/CIR-KIT-Unit03/cirkit_unit03_pkgs)**.  
Supported ROS version is **Indigo**.

#### Dependent packages for apps
- [human_detector](https://github.com/CIR-KIT/human_detector)
  - [fake_target_detector](https://github.com/CIR-KIT/human_detector/tree/master/fake_target_detector)
  - [human_model_gazebo](https://github.com/CIR-KIT/human_detector/tree/master/human_model_gazebo)
  - [point_cloud_reducer](https://github.com/CIR-KIT/human_detector/tree/master/point_cloud_reducer)
  - [target_object_detector](https://github.com/CIR-KIT/human_detector/tree/master/target_obejct_detector)
- [timed_roslaunch](https://github.com/MoriKen254/timed_roslaunch)

---
## Installation
##### 1. Create **catkinized**  workspace.
##### 2. Clone cirkit_unit03_pkgs repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_pkgs.git
```
##### 2. Clone this repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_apps.git
```
##### 3. Download required packages by wstool.
```bash
$ cd <catkin_ws>
$ wstool init src
$ wstool merge -t src src/cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
$ wstool merge -t src src/cirkit_unit03_apps/cirkit_unit03_apps.rosinstall
$ wstool update -t src
```
##### 4. Download depended packages by rosdep.
```bash
$ cd <catkin_ws>
$ rosdep install -i -r -y --from-paths src --ignore-src
```
##### 5. Build packages, and set the path for the packages.
```bash
$ cd <catkin_ws>
$ catkin_make
$ source devel/setup.bash
```
