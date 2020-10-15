#!/usr/bin/env bash

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc

# Install racer
rustup toolchain install nightly
rustup default nightly
rustup component add rust-src
cargo +nightly install racer
# echo 'export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"' >> ~/.zshrc

cargo install cargo-edit
cargo install cargo-audit
rustup component add rustfmt
rustup component add clippy
