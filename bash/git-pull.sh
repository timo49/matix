#!/run/current-system/sw/bin/bash

if [ "$1" = "--help" ]; then
    echo "git-push.sh -> <user> -> <repo> -> <branch>"
fi
if [ "$1" = "timo" ] || [ "$1" = "matteo" ]; then 
    rm -f ~/.modular-nixos-configuration/users/user.nix 
    
    git add -A
    
    git commit -m "getting current config-version"
    
    git pull --rebase $2 $3
    
    ~/.modular-nixos-configuration/bash/userQuery.sh $1

    git add -A
fi
