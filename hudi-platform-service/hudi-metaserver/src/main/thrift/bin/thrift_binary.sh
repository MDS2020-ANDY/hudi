#!/bin/bash

#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
# limitations under the License.

#
# Usage: ./scripts/checkout_pr.sh
#
# Checkout a PR given the PR number into a local branch. PR branches are named
# using the convention "pull/<PR_NUMBER>", to enable pr_push_command.sh to work
# in tandem.
#

SUBDIR=../src/main/thrift/bin
OS_VERSION=$1
M1_MAC='m1_mac'
DOCKER='docker'
if [ "$OS_VERSION" = "$M1_MAC" ]
then
  sh $SUBDIR/thrift_in_mac_m1.sh
elif [ "$OS_VERSION" = "$DOCKER" ]
then
  sh $SUBDIR/thrift_in_docker.sh
else
  sh $SUBDIR/thrift_in_docker.sh
fi