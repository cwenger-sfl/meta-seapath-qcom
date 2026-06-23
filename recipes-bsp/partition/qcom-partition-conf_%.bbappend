# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

FILESEXTRAPATHS:prepend:seapath-qcom := "${THISDIR}/files:"

SRC_URI:append:seapath-qcom = " \
    file://contents.xml.in \
    file://partitions.conf \
    "

do_configure:append:seapath-qcom(){
    install -d ${S}/platforms/${MACHINE}/ufs
    install -m 0644 ${UNPACKDIR}/contents.xml.in ${S}/platforms/${MACHINE}/ufs
    install -m 0644 ${UNPACKDIR}/partitions.conf ${S}/platforms/${MACHINE}/ufs
}
