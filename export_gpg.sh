#!/bin/bash


echo "TO export a GPG from server"

gpg --export -a john > public.key

Or

gpg --export --armor --output deepak_pgp.asc deepak.prasad@test.com
