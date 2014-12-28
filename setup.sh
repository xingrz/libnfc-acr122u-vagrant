#!/bin/sh

apt-get update

echo y | apt-get install libtool unzip

echo y | apt-get install libusb-dev libpcsclite-dev libextutils-pkgconfig-perl
echo y | apt-get install libusb-0.1-4 libpcsclite1 libccid pcscd

wget -q http://www.acs.com.hk/download-driver-unified/5864/ACS-Unified-PKG-Lnx-110-P.zip
unzip -j ACS-Unified-PKG-Lnx-110-P.zip ACS-Unified-PKG-Lnx-110-P/acsccid_linux_bin-1.1.0/ubuntu/trusty/libacsccid1_1.1.0-1~trusty1_amd64.deb
dpkg -i libacsccid1_1.1.0-1~trusty1_amd64.deb
rm -f libacsccid1_1.1.0-1~trusty1_amd64.deb
rm -f ACS-Unified-PKG-Lnx-110-P.zip

wget -q https://bintray.com/artifact/download/nfc-tools/sources/libnfc-1.7.1.tar.bz2
tar xvf libnfc-1.7.1.tar.bz2
cd libnfc-1.7.1
./configure --with-drivers=acr122_pcsc
make install
cd ..
rm -rf libnfc-1.7.1
rm -f libnfc-1.7.1.tar.bz2

ldconfig
