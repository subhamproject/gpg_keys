#!/bin/bash

for fpr in $(gpg --list-keys --with-colons  | awk -F: '/fpr:/ {print $10}' | sort -u); do echo -e "y\ny\n" |  gpg --command-fd 0 --expert --edit-key $fpr sign; done
