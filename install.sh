#!/bin/bash

SUDO=sudo
if [ "$(whoami)" = "root" ]; then
    SUDO=""
fi

${SUDO} echo "Installing whatsdesk-patch"...
chmod +x whatsdesk-patch
${SUDO} cp whatsdesk-patch /usr/local/bin/
mkdir -p /home/**/.icons
${SUDO} mkdir -p /usr/local/.icons
${SUDO} cp -r whatsdesk-icons /home/**/.icons
${SUDO} cp -r whatsdesk-icons /usr/local/.icons
whatsdesk-patch
