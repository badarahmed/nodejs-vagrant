#!/bin/sh

NODE_VERSION="0.10.26-linux-x64"

# update apt repo
apt-get update -y -q

# install git
echo "[PROVISIONER] Installing git ..."
apt-get install git -y -q

# download nodejs linux binary
echo "[PROVISIONER] Downloading nodejs v${NODE_VERSION} ..."
wget --quiet http://nodejs.org/dist/v0.10.26/node-v${NODE_VERSION}.tar.gz

# install nodejs
echo "[PROVISIONER] Installing nodejs ..."
tar -zxf node-v${NODE_VERSION}.tar.gz

# move node install to /opt/node
mv node-v${NODE_VERSION}/ /opt/node/

# create /usr/bin symlinks 
ln -s /opt/node/bin/node /usr/bin/node
ln -s /opt/node/bin/npm /usr/bin/npm

echo "[PROVISIONER] --- End of Provision Script --- "