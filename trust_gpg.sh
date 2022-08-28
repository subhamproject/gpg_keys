#!/bin/bash

#https://raymii.org/s/articles/GPG_noninteractive_batch_sign_trust_and_send_gnupg_keys.html

for fpr in $(gpg --list-keys --with-colons  | awk -F: '/fpr:/ {print $10}' | sort -u);  \
  do  echo -e "5\ny\n" |  gpg --command-fd 0 --expert --edit-key $fpr trust; done
