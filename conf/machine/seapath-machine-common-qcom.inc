# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

MACHINEOVERRIDES =. "seapath:"
MACHINEOVERRIDES =. "seapath-qcom:"
SERIAL_CONSOLES = "115200;ttyS0"
EFI_PROVIDER = "grub-efi"

# Kernel parameters
APPEND += " \
    audit=0 \
    slab_nomerge \
    rootfstype=ext4 \
    spec_store_bypass_disable=auto \
    rng_core.default_quality=500 \
"

# Arm64 does not support compressed kernel
KERNEL_IMAGETYPE = "Image"
