#!/bin/sh

#
# cluster_status.sh
#
# Developed by k0t
# Copyright (c) 2018 UNKNOWN Company
# All rights reserved.
#
# Changelog:
# 27/06/2018 - created
#

echo $3 > /var/run/keepalived2.status
