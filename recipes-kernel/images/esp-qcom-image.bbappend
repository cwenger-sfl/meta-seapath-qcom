# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

PACKAGE_INSTALL = " \
    linux-qcom-uki \
    ${EFI_PROVIDER} \
    ${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot', 'systemd-bootconf', '', d)} \
"
