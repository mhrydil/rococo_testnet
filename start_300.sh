#!/bin/bash

# start parachain 300
./substrate-parachain-template/target/release/parachain-collator --tmp --ws-port 9988 --port 30337 --parachain-id 300 --validator -- --chain rococo-3.json