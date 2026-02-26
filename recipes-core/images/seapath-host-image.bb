# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

require recipes-core/images/seapath-host-common.inc
require recipes-core/images/seapath-dbg-common.inc
require recipes-core/images/seapath-efi-common.inc
inherit image-qcom-deploy
DESCRIPTION = "A host image for Seapath"

# Qualcomm boards need to have a ext4 image
IMAGE_FSTYPES:append = " ext4"
# wic generation is not compatible with qualcomm image deploy
IMAGE_FSTYPES:remove = "wic.gz"
IMAGE_FSTYPES:remove = "wic.bmap"
IMAGE_FSTYPES:remove = "wic.qcow2"

do_tar_image_boot_directory:qcom() {
    cp -r ${IMAGE_ROOTFS}/EFI ${IMAGE_ROOTFS}/boot/
    tar -cJhf ${IMGDEPLOYDIR}/${IMAGE_BASENAME}-boot.tar.xz -C ${IMAGE_ROOTFS}/boot ./EFI ./Image
}
