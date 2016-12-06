#!/bin/bash

if ! [[ -e "/package" && -d "/package" ]] ; then
  echo "You need to add docker run option for mounting a volume: -v /path/to/dir:/package"
  exit 1
fi

git clone -b ${BRANCH} https://${REPO}.git ${GOPATH}/src/${REPO}
cd ${GOPATH}/src/${REPO}/modules/${MODULE}
go get ./...
./control build
./control pack
mv *.tar.gz /package/
