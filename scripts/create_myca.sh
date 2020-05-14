#!/bin/bash

domain=client1.domain.tld
mutual_auth_dir=~/myca

git clone https://github.com/OpenVPN/easy-rsa.git
cd easy-rsa/easyrsa3
./easyrsa init-pki
./easyrsa build-ca nopass
./easyrsa build-server-full server nopass
./easyrsa build-client-full ${domain} nopass

mkdir ${mutual_auth_dir}
cp pki/ca.crt ${mutual_auth_dir}
cp pki/issued/server.crt ${mutual_auth_dir}
cp pki/private/server.key ${mutual_auth_dir}
cp pki/issued/${domain}.crt ${mutual_auth_dir}
cp pki/private/${domain}.key ${mutual_auth_dir}
