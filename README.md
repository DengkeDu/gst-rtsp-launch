## install gstreamer
sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

## install rtsp plugin for gstreamer
sudo apt install gstreamer1.0-rtsp libgstrtspserver-1.0-dev

## build configure
pkg-config --libs --cflags gstreamer-1.0 gstreamer-rtsp-server-1.0

## run server
./rtsp-launch "( v4l2src ! videoconvert ! video/x-raw,format=I420 ! x264enc ! rtph264pay name=pay0 pt=96 )"

## run client
gst-launch-1.0 -v playbin uri=rtsp://127.0.0.1:8554/test
