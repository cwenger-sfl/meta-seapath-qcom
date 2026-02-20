# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

# Added by https://github.com/qualcomm-linux/meta-qcom-hwe/blob/scarthgap/recipes-core/systemd/systemd_%25.bbappend
PACKAGECONFIG:remove = "coredump"

# Patch conflict with https://github.com/seapath/meta-seapath/blob/scarthgap/recipes-core/systemd/files/0001-networkd-wait-online-any.patch
SRC_URI:remove = "file://0001-QCLINUX-units-adjust-timeout-for-systemd-networkd-wa.patch"
