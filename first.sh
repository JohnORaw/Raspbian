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
chmod 400 ~/.ssh/id_ed25519.pub
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com
echo "Copy the public key up to your GITHUB account
