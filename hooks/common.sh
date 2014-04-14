#!/bin/bash

set -eux # -x for verbose logging to juju debug-log

VERSION=$(config-get version)
CLUSTER_NAME=$(config-get cluster-name)
BOOTSTRAP_CLASS=$(config-get bootstrap-class)
ACCESS_KEY=$(config-get access-key)
SECRET_KEY=$(config-get secret-key)
REGION=$(config-get region)
CHECKSUM=$(config-get checksum)
DOWNLOADURL=$(config-get downloadurl)
CHECKSUMWRAPPER=$(config-get checksumwrapper)
ZENMASTERS=$(config-get zenmasters)
HOST=`unit-get private-address`
HEAP_SIZE=1024  # may need to change this if using small ec2 instance
#HEAP_SIZE=`cat /proc/meminfo | grep MemTotal | awk '{print int($2*.5/1000)}'`
USER="elasticsearch"
