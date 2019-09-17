wget -c https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
sudo cp -r ffmpeg*/ffmpeg /usr/bin/
rm -rf ffmpeg*
