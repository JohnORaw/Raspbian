The reference for this HAT is here. 
https://www.waveshare.com/wiki/Serial_Expansion_HAT

1. Enable I2C on the RPi and reboot
2. Run the following script

'''
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.71.tar.gz
tar zxvf bcm2835-1.71.tar.gz 
cd bcm2835-1.71/
sudo ./configure && sudo make && sudo make check && sudo make install
'''

3. 

