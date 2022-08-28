#!/bin/bash

gpg --encrypt --output file.gpg --recipient user@example.com file

gpg --recipient amit.kumar@test.com --encrypt secret

gpg --recipient bob --encrypt filename

gpg -e -u fred -r john encryptfile1.txt
