#!/data/data/com.termux/files/usr/bin/bash env

############################################
#  [IAMX] X-3_SETUP SCRIPT
############################################
# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

# Install LOLCat via Ruby's package manager
gem install lolcat

# Remove existing files
tsu -c 'find . -iname '*X-3.sh*' -exec rm -rf {} \;'

# Fetch the script and setup
tsudo wget https://raw.githubusercontent.com/IAMX-YT/X-3/master/X-3.sh -O ./X-3.sh
tsu -c chmod a+x X-3.sh
tsu -c ./X-3.sh
