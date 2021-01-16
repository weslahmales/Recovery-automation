#!/bin/bash

echo "Area69Lab Recovery Automation"
mkdir work >> /dev/null
cd work >> /dev/null
echo "init repo/n"
repo init -u $MANIFEST --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips
repo sync -j4 >> /dev/null
echo "cloning dt"
git clone $DT_LINK --depth=1 --single-branch $DT_PATH

if [[ "$KERNELISPREBUILT" == "false" ]]; then
       echo "using manual kernel compilation"
       git clone $KERNEL_LINK --depth=1 --single-branch $KERNEL_PATH
else 
       echo "Kernel is prebuilt. Clone skipped."
fi

if [[ "$REQ_QCOM_COMMONSYS" == "true" ]]; then
       echo "cloning QCOM commonsys"
       git clone https://github.com/omnirom/android_vendor_qcom_opensource_commonsys -b android-9.0 vendor/qcom/opensource/commonsys
else 
       echo "QCOM commonsys not required. Clone skipped."
fi

if [[ "$CRYPTFS_FIX" == "true" ]]; then
       echo "fixing cryptfs"
       cd vendor/qcom/opensource/commonsys/
       rm -rf cryptfs_hw
       rm Android.bp
       wget https://raw.githubusercontent.com/ElytrA8/cryptfs_fixup/main/Android.bp
       cd ../../../..
else 
       echo "Cryptfs fix not required. Skipped"
fi

echo "compiling recovery"
source build/envsetup.sh && \
lunch omni_$DEVICE-eng && \
export ALLOW_MISSING_DEPENDENCIES=true && \
mka $TARGET
