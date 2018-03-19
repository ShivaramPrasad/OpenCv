# OpenCv

## These are the following steps is to setup OpenCV in our Environment:

   1 version="$(wget -q -O - http://sourceforge.net/projects/opencvlibrary/files/opencv-unix | egrep -m1 -o '\"[0-9](\.[0-9]+)+' | cut -c2-)"

   2 echo "Installing OpenCV" $version

   3 mkdir OpenCV

   4 cd OpenCV

   5 echo "Removing any pre-installed ffmpeg and x264"

   6 sudo apt-get -qq remove ffmpeg x264 libx264-dev

   7 echo "Installing Dependenices"

   8 sudo apt-get -qq install libopencv-dev build-essential checkinstall cmake pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg cmake qt5-default checkinstall

   9 echo "Downloading OpenCV" $version

  10 wget -O OpenCV-$version.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/$version/opencv-"$version".zip/download

  11 echo "Installing OpenCV" $version

  12 unzip OpenCV-$version.zip

  13 cd opencv-$version

  14 mkdir build

  15 cd build

  16 cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..

  17 make -j2

  18 sudo checkinstall

  19 sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'

  20 sudo ldconfig

  21 echo "OpenCV" $version "ready to be used".......
-

## After the setup, Once the program code is ready execute in terminal using these following commands :

>> compilation code : g++ `pkg-config --cflags opencv` filename.cpp `pkg-config --libs opencv`

>> running code : ./a.out

-

## This git repository contains some basics of OpenCV you can see those outputs as follows :

folder-> Point2color 
![image](https://user-images.githubusercontent.com/37517830/37601676-f9ee6972-2b8a-11e8-9e42-e96d3b013204.png)


-> resize
![image](https://user-images.githubusercontent.com/37517830/37602446-aaf18820-2b8c-11e8-96b8-4b23e098d319.png)

-

## OpenCV CheatCode Sheet

For more refernce i have uploaded a  pdf file to get things know more about basic commands and codes of OpenCV library


