apt update
apt install golang
apt install git
pkg install ffmpeg
pkg install proot
termux-chroot

wget https://yt-dl.org/downloads/latest/youtube-dl -O ./youtube-dl
cp -r youtube-dl /usr/bin/
chmod a+rx /usr/bin/youtube-dl

git clone http://github.com/necdetuygur/yt-dl
cd yt-dl/
go build downloader.go
cp -r downloader /usr/bin/
chmod a+rx /usr/bin/downloader

downloader https://m.youtube.com/watch?v=#
