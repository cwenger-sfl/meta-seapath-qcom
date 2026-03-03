# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-qcom-custom:"
SRC_URI:append = " file://config-qcom.cfg"

KERNEL_CONFIG_FRAGMENTS:append = " ${WORKDIR}/config-qcom.cfg"
