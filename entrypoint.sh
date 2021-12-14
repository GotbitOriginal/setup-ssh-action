#!/bin/sh -l

mkdir -p ~/.ssh/
echo "$4" > ~/.ssh/$1
chmod 600 ~/.ssh/$1
cat >>~/.ssh/config <<END
Host $1
    HostName $2
    User $3
    IdentityFile ~/.ssh/$1
    StrictHostKeyChecking no
END