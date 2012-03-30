#!/bin/bash


if [ "${1}" == "all" ]; then
echo "flashall" 
sudo ./fastboot flash boot out/target/product/passion/boot.img  
sudo ./fastboot flash recovery out/target/product/passion/recovery.img  
sudo ./fastboot flash system out/target/product/passion/system.img   
sudo ./fastboot flash userdata out/target/product/passion/userdata.img  
#sudo./fastboot erase cache reboot
sudo ./fastboot reboot
else


sudo ./fastboot flash $1 out/target/product/passion/$1.img reboot
fi


 
