# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

change_init:append:qcom () {
    cat <<EOF>${IMAGE_ROOTFS}/sbin/init-partitions.sh
#!/bin/bash
LOG_PART=\$(blkid -t PARTLABEL=logdump --output device --list-one)
PERSISTENT_PART=\$(blkid -t PARTLABEL=persistent --output device --list-one)
blkid \$LOG_PART -o full | grep 'TYPE="ext4"' -q || mkfs.ext4 \$LOG_PART -L log
blkid \$PERSISTENT_PART -o full | grep 'TYPE="ext4"' -q || mkfs.ext4 \$PERSISTENT_PART -L persistent

EOF

    chmod 755 ${IMAGE_ROOTFS}/sbin/init-partitions.sh
    sed -e "\;/bin/mount.*/mnt/persistent; i/sbin/init-partitions.sh" -i ${IMAGE_ROOTFS}/sbin/init.sh
}
