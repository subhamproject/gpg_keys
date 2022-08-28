#!/bin/bash

#https://www.golinuxcloud.com/tutorial-encrypt-decrypt-sign-file-gpg-key-linux/
#http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/


KEY_ID=$1

[ -z $KEY_ID ] && { echo "Please provide key id and try again" ; exit 1 ; }

echo "-------------------------------------------------------------------"

echo "List of GPG Private Keys in Server"
gpg --list-secret-keys

echo "-------------------------------------------------------------------"

echo "Deleting $KEY_ID private keys from server"
gpg --batch --delete-secret-keys --yes $KEY_ID


echo "-------------------------------------------------------------------"

echo "Deleting $KEY_ID Public keys from server"
gpg --batch --delete-keys --yes $KEY_ID


echo "-------------------------------------------------------------------"

echo "Final list of keys remains in Server"
gpg --list-keys
