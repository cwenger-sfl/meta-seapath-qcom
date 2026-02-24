# Copyright (C) 2026 Savoir-faire Linux, Inc.
# SPDX-License-Identifier: Apache-2.0

# "generic" refer to ARM64 platform
do_write_config:append() {
    sed -i "/\[properties\]/a platform = 'generic'" ${WORKDIR}/meson.cross
}
