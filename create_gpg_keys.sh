#!/bin/bash

#https://www.gnupg.org/documentation/manuals/gnupg-devel/Unattended-GPG-key-generation.html
#export GNUPGHOME="$(mktemp -d)"
cat >gpg_config <<EOF
     %echo Generating a basic OpenPGP key
     Key-Type: RSA
     Key-Length: 2048
     Subkey-Type: RSA
     Subkey-Length: 2048
     Name-Real: Subham Mandal
     Name-Comment: Devops User
     Name-Email: devopsforall@gmail.com
     Expire-Date: 5y
     Passphrase: password
     # Do a commit here, so that we can later print "done" :-)
     %commit
     %echo done
EOF

gpg --batch --generate-key gpg_config

gpg --list-secret-key
