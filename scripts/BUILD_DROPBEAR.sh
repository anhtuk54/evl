#!/bin/bash
################################################################################
# Basic settings
################################################################################
source ENV.sh

################################################################################
# Configurations
################################################################################
mkdir -p ${DROPBEAR_BUILD_DIR}
cd ${DROPBEAR_BUILD_DIR}
${DROPBEAR_DIR}/configure --host=${CC_HOST} \
	--prefix=${DROPBEAR_INSTALL_DIR} \
	--disable-zlib --enable-static \
	CC=${CC_HOST}-gcc LD=${CC_HOST}-ld

################################################################################
# For building
################################################################################
make -j6 install
