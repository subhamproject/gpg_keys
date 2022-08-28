#!/bin/bash

gpg --output secret --decrypt secret.gpg

gpg --decrypt test-file.asc > file.txt


echo "Decrypt file with passphrase - no promt"
gpg --pinentry-mode loopback --passphrase='PASSWORD' --output /output/outputFileName /input/inputFileName
