#!/bin/bash

# When you change this file, you must take manual action. Read this doc:
# - https://docs.sandstorm.io/en/latest/vagrant-spk/customizing/#setupsh

set -euo pipefail

version=1.17.2
os=linux
arch=amd64

# The version of golang in the debian repositories tends to be incredibly
# out of date; let's get ourselves a newer version from upstream:
curl -L https://golang.org/dl/go${version}.${os}-${arch}.tar.gz -o go.tar.gz
tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz
echo 'export PATH=/usr/local/go/bin:$PATH' > /etc/profile.d/go.sh

# Needed for fetching go libraries:
apt-get install -y git

# Needed for downloading C header files used by go libraries such as sqlite3.
apt-get install -y build-essential

# Install yarn for building static frontend assets.
apt install -y curl
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install -y yarn

exit 0
