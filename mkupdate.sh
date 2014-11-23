#!/bin/bash
pause()
{
echo "Press any key to quit:"
read -n1 -s key
exit 1
}
echo "start to make update.img..."
if [ ! -f "parameter" ]; then
	echo "Error:No found parameter!"
	pause
fi
if [ ! -f "package-file" ]; then
	echo "Error:No found package-file!"
	pause
fi
./afptool -pack ./backupimage ./backupimage/backup.img
./afptool -pack ./ output/update_noboot.img || pause
./rkImageMaker -RK31 RK3188Loader\(L\)_V2.10.bin output/update_noboot.img update.img -os_type:androidos || pause
echo "Making update.img OK."
echo "Press any key to quit:"
read -n1 -s key
exit 0
