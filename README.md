11/22/14 <red13dotnet>
Run mkupdate.sh after doing the following:
Build kernel
Build android
Run 'mkimage.sh ota' from build directory root
From this diretory run 'mkupdate.sh'
File update.img will be built in this directory and is ready for flashing or SD update
