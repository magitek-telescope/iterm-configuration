#!/bin/sh

set -eu

rm -rf ./dist/
cp -r ./src/ ./dist/
sed -i.bak -e "s/{username}/$(whoami)/g" ./dist/**.*
rm ./dist/*.bak
