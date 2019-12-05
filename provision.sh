#!/bin/bash

sudo apt update
sudo apt -y install ax25-tools ax25-apps golang libax25-dev libax25

echo "wl2k	K1CHN-7		9600	255	7	th-d74" | sudo tee -a /etc/ax25/axports
sudo kissattach /dev/ttyS0 wl2k
sudo kissparms -p wl2k -t 300 -l 10 -s 12 -r 80 -f n

go get -tags libax25 github.com/la5nta/pat

# go/bin/pat --config /vagrant/pat-config.json --mbox /vagrant/mailbox --event-log /vagrant/event.log --log /vagrant/pat.log http
