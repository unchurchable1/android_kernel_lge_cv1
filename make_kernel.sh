#!/bin/bash

cd $(dirname $0)

rm -rf out
mkdir -p out

make ARCH=arm O=./out cv1_att_us-perf_defconfig
make ARCH=arm O=./out CROSS_COMPILE=$(pwd)/../../../prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi- KERNEL_COMPRESSION_SUFFIX=gz -j4
