#!/bin/bash

# make genesis files (for registration on explorer)
./substrate-parachain-template/target/release/parachain-collator export-genesis-state --parachain-id 200 > para-200-genesis
./substrate-parachain-template/target/release/parachain-collator export-genesis-state --parachain-id 300 > para-300-genesis
./substrate-parachain-template/target/release/parachain-collator export-genesis-state --parachain-id 400 > para-400-genesis


# make wasm files (for registration on explorer)
./substrate-parachain-template/target/release/parachain-collator export-genesis-wasm > para-200-wasm
./substrate-parachain-template/target/release/parachain-collator export-genesis-wasm > para-300-wasm
./substrate-parachain-template/target/release/parachain-collator export-genesis-wasm > para-400-wasm
