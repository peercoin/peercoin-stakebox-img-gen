#!/bin/bash -e

install -m 644 files/peercoin.list ${ROOTFS_DIR}/etc/apt/sources.list.d/
on_chroot apt-key add - < files/public.asc
on_chroot << EOF
apt-get update
EOF
