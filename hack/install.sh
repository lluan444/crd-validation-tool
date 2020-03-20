#!/bin/bash
#
# Copyright 2019 IBM Corp. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# check if running piped from curl
if [ -z ${BASH_SOURCE} ]; then
  [ -d "/tmp/crd-validation" ] && rm -rf /tmp/crd-validation 
  mkdir -p /tmp/crd-validation
  cd /tmp/crd-validation
  echo "* Downloading install yaml..."
  curl -sLJO https://github.com/lluan444/crd-validation-tool/archive/master.zip
  unzip -qq crd-validation-tool-master.zip
  mv crd-validation-tool-master crd-validation-tool-0.0.1
  cp -r crd-validation-tool-0.0.1 ~/.vscode/extensions/.
  cd /tmp
  rm -rf crd-validation
else
  cp -r ../../crd-validation-tool ~/.vscode/extensions/crd-validation-tool-0.0.1
fi
