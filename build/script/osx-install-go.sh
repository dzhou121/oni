#!/usr/bin/env bash

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew install gimme
    gimme stable

    echo $GOPATH

    go version
    go get -u github.com/sourcegraph/go-langserver
fi