#!/usr/bin/env bash
# Copyright 2019 The Last Pickle Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -ex

# build Debian
# copy built packages into a mounted volume
cd ${WORKDIR}
## TODO @alainr - get the version from somewhere
export VERSION=0.3
cd ${WORKDIR}/cassandra-medusa/packaging
make build-packages
mv *.deb ${WORKDIR}/packages # TODO @alainr *.rpm too
cd ${WORKDIR}

# execute any provided command
$@
