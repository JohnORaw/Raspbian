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
# Start the SSH agent
eval `ssh-agent -s`
# Add this new key to the agent
ssh-add id_rsa

echo "Copy the public key up to your GITHUB account
read -p "Press enter when you have registered the key"
ssh -T git@github.com
