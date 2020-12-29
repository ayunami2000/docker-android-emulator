#!/bin/bash
git clone https://github.com/novnc/noVNC
./noVNC/utils/launch.sh --listen 80 &
git clone 
cd android-base
docker build -t softsam/android .
cd ..
cd android-19
docker build -t softsam/android-19 .
cd ..
docker run -d -p 5900:5900 --name android softsam/android-19
