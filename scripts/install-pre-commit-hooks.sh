#!/bin/sh

# install git pre-commit hook

if [ -d ".git/hooks" ] 
then
    rm -f .git/hooks/pre-commit
else
    echo "Create directory .git/hooks"
    mkdir .git/hooks
fi


cp $(PWD)/scripts/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

echo "Install Complete."