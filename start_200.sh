#!/bin/bash

# start parachain 200
./substrate-parachain-template/target/release/parachain-collator --tmp --ws-port 9977 --port 30336 --parachain-id 200 --validator -- --chain rococo-3.json