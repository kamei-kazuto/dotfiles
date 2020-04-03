if test ! $(which rustc); then
  echo "Installing rust..."
  curl https://sh.rustup.rs -sSf | sh
fi

# Cargo modules
# cargo-edit: https://github.com/killercup/cargo-edit
# cargo-generate: https://github.com/ashleygwilliams/cargo-generate
# wasm-pack: https://github.com/rustwasm/wasm-pack
mod=(
  cargo-edit
  cargo-generate
  wasm-pack
)

echo "installing cargo modules..."
cargo install ${mod[@]}

# update version
rustup update

# language server: https://github.com/rust-lang/rls
# formatter:  https://github.com/rust-lang/rust-clippy
rustup component add rls rust-analysis rust-src rust-fmt clippy