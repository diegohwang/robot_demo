#! /bin/bash

pybot -d result parse.robot
cp -r /root/.jenkins/workspace/robot_demo/result/ /home/huangjm/study/robot/sniff/result
