#!/usr/bin/bash
source ./colors.sh

printlnGreen "=> updating packages"
apt update && apt dist-upgrade -y
