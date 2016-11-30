cmake_minimum_required(VERSION 2.8.3)
project(cirkit_unit03_apps)
find_package(catkin REQUIRED COMPONENTS roslaunch)

roslaunch_add_file_check(test/autorun.test.xml)
roslaunch_add_file_check(test/autorun_gazebo.test.xml)
roslaunch_add_file_check(test/autorun_gazebo_with_human.test.xml)
roslaunch_add_file_check(test/autorun_gmapping_gazebo.test.xml)
roslaunch_add_file_check(test/autorun_gmapping_setting.test.xml)
