The reference for this HAT is here. 
https://www.waveshare.com/wiki/Serial_Expansion_HAT

Enable I2C on the RPi and cold reboot (e.g. power cycle)

## BCM2835 ##
```
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.71.tar.gz
tar zxvf bcm2835-1.71.tar.gz 
cd bcm2835-1.71/
sudo ./configure
sudo make
sudo make check
sudo make install
```

## Wiring ##
```
git clone https://github.com/WiringPi/WiringPi
cd WiringPi
. /build
# cold reboot (e.g. power cycle)
gpio -v
```

## Boot ##
```
sudo nano /boot/config.txt
# addr should be the same as the actual setting of A0A1, default 0X48
dtoverlay=sc16is752-i2c,int_pin=24,addr=0x48
# reboot
sudo reboot
```

