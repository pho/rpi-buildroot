#!/bin/sh

TARGET="${1}"

# copy System.map
cp ${TARGET}/../build/linux-*/System.map ${TARGET}/System.map

# copy kernel
mv ${TARGET}/../images/zImage ${TARGET}/../images/boot/kernel.img

exit 0

