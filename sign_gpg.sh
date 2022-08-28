#!/bin/bash

for key in $(gpg2 -k --with-colons | grep pub: | cut -d ":" -f 5); do
  gpg2 --fingerprint $key
  # TODO: check if the key is already signed; if not, sign it
  gpg2 --batch --yes --sign-key $key
done
