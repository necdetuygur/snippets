pkg install proot
termux-chroot
apt update
apt install golang
apt install git
wget https://yt-dl.org/downloads/latest/youtube-dl -O ./youtube-dl
cp -r youtube-dl /usr/bin/
git clone http://github.com/necdetuygur/yt-dl
cd yt-dl/
go build downloader.go 
cp -r downloader /usr/bin/
chmod a+rx /usr/bin/downloader 
pkg install ffmpeg
downloader https://m.youtube.com/watch?v=#
