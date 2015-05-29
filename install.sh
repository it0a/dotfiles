#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=$(pwd -P)
popd > /dev/null
ln -nsf "$SCRIPTPATH"/* "$SCRIPTPATH"/{.[!.],}* ~/test/

