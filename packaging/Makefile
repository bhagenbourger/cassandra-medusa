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

clean:
	rm -Rf ${WORKDIR}/packages/*
	rm -Rf ${WORKDIR}/build/*

prepare: clean
	echo "Building $(VERSION)..."
	mkdir -p ${WORKDIR}/build/
	mkdir -p ${WORKDIR}/packages/

deb: prepare
	# possible to add --> --pre-install debian/preinstall.sh --post-install debian/postinstall.sh
	fpm -s virtualenv -t deb -v $(VERSION) cassandra-medusa

#rpm: prepare
	#fpm -s dir -t rpm -n cassandra-medusa -v $(VERSION) -C build

build-packages: deb # rpm
