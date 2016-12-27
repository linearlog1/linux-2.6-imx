

export ARCH=arm
source /opt/poky/2.1.1/environment-setup-cortexa9hf-neon-poky-linux-gnueabi
LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- distclean
LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- mx6dl_ba16_defconfig
# LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- mx6q_ba16_defconfig
# make image
LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage
# make device tree
# LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- imx6q-dms-ba16.dtb
 LOADADDR=0x10008000 make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- imx6dl-dms-ba16.dtb

# copy Kernel:
# ====================================================
# cp -r arch/arm/boot/uImage /media/linearog/Boot\ imx6q-/
# umount /media/linearog/Boot\ imx6q-/
