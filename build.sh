#!/bin/bash
gcc rtsp-launch.c `pkg-config --libs --cflags gstreamer-1.0 gstreamer-rtsp-server-1.0` -o rtsp-launch
