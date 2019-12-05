In my previous experiments with Winlink, I was able to get it set up on my Raspberry Pi [both with usb](https://www.k1chn.com/posts/winlink-on-the-th-d74-with-raspberry-pi/) and [with bluetooth](https://www.k1chn.com/posts/winlink-th-d74a-now-with-more-bluetooth/), and all was well. However, having to lug around a raspberry pi just to winlink is a bit of a pain. I would much prefer to just use my laptop directly. Sadly, macOS doesn't have native AX.25 support like linux does, so I can't run pat directly on it.

I didn't think it would be that hard, however, to configure a serial port from my laptop to pass through into a virtual machine and I can run linux there. Sure enough, it seems to work!

I haven't 100% confirmed that this works, because I think my local winlink node temp banned me since I was being slightly broken for a bit, but I was at least able to make some noises and send and receive some packets, so concept is at least partially proven.

# setup

The setup is my radio is paired with my laptop (2019 macbook air, macOS Catalina) via bluetooth, which creates 2 device files: `/dev/tty.TH-D74-SerialPort` and `/dev/cu.TH-D74-SerialPort`, the first of which appears to be the KISS interface. The `cu` one is the "incoming" serial port? Unsure.

```
Incoming Serial Ports:
  Bluetooth-Incoming-Port:
    RFCOMM Channel:	3
    Requires Authentication:	No
Outgoing Serial Ports:
  TH-D74-SerialPort:
    Address:	24-71-89-A2-4A-68
    RFCOMM Channel:	2
    Requires Authentication:	No
```

That seems to match up with the device major and minor numbers?

```
crw-rw-rw-  1 root  wheel   18,   3 Dec  4 19:07 /dev/cu.TH-D74-SerialPort
crw-rw-rw-  1 root  wheel   18,   2 Dec  4 18:56 /dev/tty.TH-D74-SerialPort
```

Anywho.
