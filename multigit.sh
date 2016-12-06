#!/usr/bin/env bash
for i in {1..500}
do
    openssl rand -base64 6 > README.md
    git add README.md
    git commit -m "some update"
done
