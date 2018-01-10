#!/usr/bin/env bash

cat > output/host/env.sh <<EOF
export SYSROOT=\$HOME/sdk/arm-buildroot-linux-gnueabihf/sysroot
export PATH=\$HOME/sdk/bin:$PATH
export HOST=arm-buildroot-linux-
EOF
echo "Creating sdk tar"
sdk_version=`git rev-parse --short HEAD`
tar -czvf output/images/sdk-$sdk_version.tar.gz -C output/host/ .




