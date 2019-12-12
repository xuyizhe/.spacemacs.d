#!/usr/bin/env bash

brew update
brew upgrade
brew tap ethereum/ethereum
brew install solidity

# npm install -g ethlint
npm install -g solc
