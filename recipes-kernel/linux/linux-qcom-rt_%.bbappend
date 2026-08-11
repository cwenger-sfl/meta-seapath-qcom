# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-qcom-rt:"

SRC_URI += " \
    file://dpdk.cfg \
    file://overlayfs.cfg \
    file://ovs.cfg \
    file://realtime.cfg \
    file://0002-clocksource-arm_arch_timer-add-Cortex-A78C-OOL-worka.patch \
    file://0006-arch-arm64-arch_timer-skip-ISB-on-counter-read-for-1.patch \
    file://0007-clocksource-arm_arch_timer-add-programming-tracepoin.patch \
    file://0009-irqchip-gic-v3-add-irq-delivery-tracepoints.patch \
    "
# Enable debug traces in Kernel and tracing tools support (like LTTng or perf).
SRC_URI:append:seapath-lttng = " file://traces.cfg"
