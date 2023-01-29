# OOTFest

These instructions are intended for Ubuntu.

## First Build
Install prerequisites:
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt install libfuse2
```

Clone Repository:
```
cd ~
mkdir git
cd git
git clone https://github.com/tcpowell/ootfest.git
```

Copy Prerequisite Files:

`~/ZELOOTD.z64`

`~/git/ootfest/Save` (optional)

Run the update script (in the next section)


## Update Script
Open a terminal window and run:
```
cd ~/git/ootfest
./ootfest-update-linux.sh
```
