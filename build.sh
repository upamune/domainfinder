#!/bin/bash

mkdir -p lib

echo "domainfinder をビルドします..."
go build -o domainfinder
echo "synonymsをビルドします..."
cd ../synonyms || exit 1
go build -o ../domainfinder/lib/synonyms

echo "availableをビルドします..."
cd ../available || exit 1
go build -o ../domainfinder/lib/available

echo "sprinkleをビルドします..."
cd ../sprinkle || exit 1
go build -o ../domainfinder/lib/sprinkle

echo "coolifyをビルドします..."
cd ../coolify || exit 1
go build -o ../domainfinder/lib/coolify

echo "domainifyをビルドします..."
cd ../domainify || exit 1
go build -o ../domainfinder/lib/domainify

echo 完了
