#!/bin/bash

if [[ -z "${SIGNER_ADDRESS}" ]]; then
  echo "Environment variable SIGNER_ADDRESS must be set. E.g. SIGNER_ADDRESS=0x7cE52f58a6a48F192eb23b1364B7dEE212d862F6"
  exit 1
fi
echo Signer: $SIGNER_ADDRESS=0x7cE52f58a6a48F192eb23b1364B7dEE212d862F6

if [[ -z "${CHAIN_PROVIDER}" ]]; then
  echo "Environment variable CHAIN_PROVIDER must be set. E.g. CHAIN_PROVIDER=https://mainnet.infura.io/v3/<your_api_key>"
  exit 1
fi
echo Chain provider: $CHAIN_PROVIDER=https://mainnet.infura.io/v3/<your_api_key>

npx ganache-cli \
--fork $CHAIN_PROVIDER \
--unlock $SIGNER_ADDRESS \
--keepAliveTimeout 36000000000000000000 \
--networkId 1 \
--gasLimit 0000000
