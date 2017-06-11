#!/usr/bin/env sh

add-apt-repository --yes "ppa:ubuntu-sdk-team/ppa"
apt-get update -qq
apt-get install -qq "qt5-qmake" "qtbase5-dev" "qtdeclarative5-dev" "qtscript5-dev" "qtmultimedia5-dev" "libpulse-dev" "qt5-default" "qttools5-dev-tools"
apt-get install -qq "g++" "cmake"

mkdir build
cd build
cmake ..
make -j8
cd ..

mv "build/gui/gui" "release/Grabber"
touch "release/settings.ini"

echo "Grabber has been compiled in the release directory. To run it, type './release/Grabber'"
