# Setting up local Rococo testnet

## Follow along in more detail here: https://substrate.dev/cumulus-workshop/

1. Install Rust
	- https://substrate.dev/docs/en/knowledgebase/getting-started/ or just
	- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
	- Restart your terminal
1. Build Relay Chain Node
	- `git clone https://github.com/paritytech/polkadot.git`
	- `cd polkadot`
	- `git checkout 93f0029`
	- `rustup install nightly-2020-10-06`
	- `rustup target add wasm32-unknown-unknown --toolchain nightly-2020-10-06`
	- `cargo +nightly-2020-10-06 build --release`
	- Print the help page to ensure the node built correctly:
		- ./target/release/polkadot --help
1. Build Collator Template
	- `git clone https://github.com/substrate-developer-hub/substrate-parachain-template.git` (from the main rococo_testnet folder)
	- `cd substrate-parachain-template`
	- `git checkout 9506b93`
	- `cargo build --release`
	- Print the help page to ensure the node built correctly:
		- `./target/release/parachain-collator --help`
1. Now everything is compiled/ready to go!
1. Start Alice, Bob, and Charlie
```bash
./start_alice.sh
./start_bob.sh
./start_charlie.sh
```
1. Start the parachains:
```bash
./start_200.sh
./start_300.sh
```
1. Register the parachains
	- First, run `./start_files.sh` to generate the wasm and genesis files that are necessary (results in 2 files per parachain)
	- Follow the steps on this page: https://substrate.dev/cumulus-workshop/#/3-parachains/2-register to register the parachains with the relay chain

## Now you should have a fully functioning network with 3 validators and 2 parachains!