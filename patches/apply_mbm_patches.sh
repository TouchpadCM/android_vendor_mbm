#!/bin/bash

if [ -z $ANDROID_BUILD_TOP ]; then
    echo "Error: ANDROID_BUILD_TOP not set, please source build/envsetup.sh"
    exit 1;
fi

MYDIR=$ANDROID_BUILD_TOP/vendor/mbm/patches

cp $MYDIR/files/cdc-acm.c $ANDROID_BUILD_TOP/kernel/drivers/usb/class/cdc-acm.c
cp $MYDIR/files/cdc-acm.h $ANDROID_BUILD_TOP/kernel/drivers/usb/class/cdc-acm.h
cp $MYDIR/files/cdc-wdm.c $ANDROID_BUILD_TOP/kernel/drivers/usb/class/cdc-wdm.c
cp $MYDIR/files/cdc.h $ANDROID_BUILD_TOP/kernel/include/linux/usb/cdc.h
cp $MYDIR/files/usbnet.h $ANDROID_BUILD_TOP/kernel/include/linux/usb/usbnet.h
cp $MYDIR/files/cdc_ncm.c $ANDROID_BUILD_TOP/kernel/drivers/net/usb/cdc_ncm.c
