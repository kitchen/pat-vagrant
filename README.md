In my previous experiments with Winlink, I was able to get it set up on my Raspberry Pi [both with usb](https://www.k1chn.com/posts/winlink-on-the-th-d74-with-raspberry-pi/) and [with bluetooth](https://www.k1chn.com/posts/winlink-th-d74a-now-with-more-bluetooth/), and all was well. However, having to lug around a raspberry pi just to winlink is a bit of a pain. I would much prefer to just use my laptop directly. Sadly, macOS doesn't have native AX.25 support like linux does, so I can't run pat directly on it.

I didn't think it would be that hard, however, to configure a serial port from my laptop to pass through into a virtual machine and I can run linux there. Sure enough, it seems to work!

I haven't 100% confirmed that this works, because I think my local winlink node temp banned me since I was being slightly broken for a bit, but I was at least able to make some noises and send and receive some packets, so concept is at least partially proven.
