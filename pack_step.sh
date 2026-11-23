#!/usr/bin/env bash
set -e
TAG="calm-delta-cosmic-cedar"
LIB="lead-shelf.a"
URL="https://github.com/elarafern/smoothshardlab/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
