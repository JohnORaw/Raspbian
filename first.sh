# JOR: 04MAY24
# Every RPi will be teated the same after boot.
# All RPi will keep their configs etc. in GITHUB

# Connect to Internet and do initial updates
sudo apt update -y
sudo apt upgrade -y 
# Probably already in the base
sudo apt install git
# Generate keys
ssh-keygen
ssh-add ~/.ssh/id_rsa
ssh -T git@github.com
