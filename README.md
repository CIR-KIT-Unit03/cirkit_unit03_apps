# cirkit_unit03_apps [![Build Status](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_apps.svg?branch=kinetic-devel)](https://travis-ci.org/CIR-KIT-Unit03/cirkit_unit03_apps) [![Slack](https://img.shields.io/badge/Slack-CIR--KIT-blue.svg)](http://cir-kit.slack.com/messages/unit03_apps)
Application packages for CIR-KIT-Unit03

For CIR-KIT-Unit03 instructions and tutorials, please see http://wiki.ros.org/Robots/CIR-KIT-Unit03.

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
### From install script
##### 1. Clone this repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_apps.git
```

##### 2. Run install script
```bash
$ cd <catkin_ws>/src/cirkit_unit03_apps
$ sh install.sh
```
- optional arguments:
  * -h: show the help message and exit
  * -i: eneble `rosdep init`
  * -t: enable `catkin_make run_tests`
  * -r: remove existing `src/.rosinstall`

### From command line
##### 1. Create **catkinized**  workspace.
##### 2. Clone cirkit_unit03_pkgs repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/cir-kit-unit03/cirkit_unit03_pkgs.git
```
##### 3. Clone this repository.
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/CIR-KIT-Unit03/cirkit_unit03_apps.git
```
##### 4. Download required packages by wstool.
```bash
$ cd <catkin_ws>
$ wstool init src
$ wstool merge -t src src/cirkit_unit03_pkgs/cirkit_unit03_pkgs.rosinstall
$ wstool merge -t src src/cirkit_unit03_apps/cirkit_unit03_apps.rosinstall
$ wstool update -t src
```
##### 5. Download depended packages by rosdep.
```bash
$ cd <catkin_ws>
$ rosdep install -i -r -y --from-paths src --ignore-src
```
##### 6. Build packages, and set the path for the packages.
```bash
$ cd <catkin_ws>
$ catkin_make
$ source devel/setup.bash
```

---
## Directory configuration after Installation

```
<catkin_ws>
│
└ src
   │ 
   ├ cirkit_unit03_apps 
   │   │
   │   ├ cirkit_unit03_apps (Metapackage)
   │   │
   │   ├ cirkit_unit03_autorun
   │   │
   │   ├ human_detector (Cloned via cirkit_unit03_apps.rosinstall)
   │   │
   │   └ timed_roslaunch (Cloned via cirkit_unit03_apps.rosinstall)
   │
   ├ cirkit_unit03_deps (Just a directory, not a metapacage)
   │   |
   |   ├ ira_laser_tools (Cloned via cirkit_unit03_pkgs.rosinstall)
   │   |
   |   ├ lower_step_detector (Cloned via cirkit_unit03_pkgs.rosinstall)
   │   |
   │   └ steer_drive_ros (Cloned via cirkit_unit03_pkgs.rosinstall)
   │
   └ cirkit_unit03_pkgs
       |
       ├ cirkit_unit03_pkgs (Metapackage)
       |
       ├ cirkit_unit03_common (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       ├ cirkit_unit03_navigation (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       ├ cirkit_unit03_robot (Cloned via cirkit_unit03_pkgs.rosinstall)
       |
       └ cirkit_unit03_simulator (Cloned via cirkit_unit03_pkgs.rosinstall)
```
