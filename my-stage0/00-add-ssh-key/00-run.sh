#!/bin/bash -e

install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh"
echo "${FIRST_USER_AUTHORIZED_KEYS}" >> "${WORK_DIR}/authorized_keys"
install -v -o 1000 -g 1000 -m 600 "${WORK_DIR}/authorized_keys" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
