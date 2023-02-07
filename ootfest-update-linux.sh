#!/bin/bash

read -p "Press any key to force an update."

rm -f oot.otr

git fetch --all
git reset --hard origin/master

if [ ! -f ZELOOTD.z64 ] && [ -f ~/ZELOOTD.z64 ]; then
    cp ~/ZELOOTD.z64 ZELOOTD.z64
fi

userdir=`pwd`

echo "[Desktop Entry]" > OOTFest.desktop
echo "Name=OOTFest" >> OOTFest.desktop
echo "Exec=sh $userdir/soh.sh" >> OOTFest.desktop
echo "Path=$userdir/" >> OOTFest.desktop
echo "Icon=$userdir/sohIcon.png" >> OOTFest.desktop
echo "comment=Ocarina of Time" >> OOTFest.desktop
echo "Type=Application" >> OOTFest.desktop
echo "Terminal=false" >> OOTFest.desktop
echo "Encoding=UTF-8" >> OOTFest.desktop
echo "Categories=Game;" >> OOTFest.desktop

chmod +x OOTFest.desktop

sudo cp OOTFest.desktop /usr/share/applications/OOTFest.desktop
