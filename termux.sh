pkg install -y golang git openssh tsu wget curl proot
termux-setup-storage
termux-chroot

pkg install -y golang git openssh ffmpeg python nodejs tsu wget curl proot

termux-setup-storage
termux-chroot

wget https://yt-dl.org/downloads/latest/youtube-dl
mv youtube-dl /usr/bin/
chmod a+rx /usr/bin/youtube-dl

git clone https://github.com/necdetuygur/yt-dl
cd yt-dl
go build downloader.go
mv downloader /usr/bin/
chmod a+rx /usr/bin/downloader
cd ..

git clone https://github.com/necdetuygur/go-test
cd go-test
go build gold.go
mv gold /usr/bin/
chmod a+rx /usr/bin/gold
cd ..

termux-chroot 
cd storage/downloads
downloader 480 https://www.youtube.com/watch?v=<VID>
