#!/bin/sh

PGW_VERSION="1.1.0"
PGW_ARCH="armv7"
PGW_URL="https://github.com/prometheus/pushgateway/releases/download/v${PGW_VERSION}/pushgateway-${PGW_VERSION}.linux-${PGW_ARCH}.tar.gz"

wget ${PGW_URL}
tar -xf pushgateway-${PGW_VERSION}.linux-${PGW_ARCH}.tar.gz 
cd pushgateway-${PGW_VERSION}.linux-${PGW_ARCH}
mv pushgateway-${PGW_VERSION}.linux-${PGW_ARCH}/pushgateway ./pushgateway
