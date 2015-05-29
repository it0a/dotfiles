#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=$(pwd -P)
popd > /dev/null
for file in `find . -type f ! -path "./.git/*" ! -name "README.md" ! -name "install.sh" `; do
    ln -nsf `echo "$file" | sed "s|^\.|$SCRIPTPATH|g"` `echo "$file" | sed "s|^\.|$HOME|g"`
done

