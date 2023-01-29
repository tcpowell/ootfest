#!/bin/bash

read -p "Press any key to force an update."

rm -f oot.otr

git fetch --all
git reset --hard origin/master

if [ ! -f ZELOOTD.z64 ] && [ -f ~/ZELOOTD.z64 ]; then
    cp ~/ZELOOTD.z64 ZELOOTD.z64
fi

sudo cp OOTFest.desktop /usr/share/applications/OOTFest.desktop
