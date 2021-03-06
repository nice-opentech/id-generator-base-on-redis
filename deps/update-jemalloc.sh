#!/bin/bash
VER=$1
URL="http://www.canonware.com/download/jemalloc/jemalloc-${VER}.tar.bz2"
echo "Downloading $URL"
curl $URL > ./jemalloc.tar.bz2
tar xvjf ./jemalloc.tar.bz2
rm jemalloc.tar.bz2
rm -rf jemalloc
mv jemalloc-${VER} jemalloc
echo "Use git status, add all files and commit changes."
