```bash
/bin/bash
# dev
docker run --rm --name rust -it --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp rust:1.23.0 /bin/sh
# in container
cargo new hello-world
cd hello-world
touch Cargo.toml
mkdir -p src
cd src
touch main.rs
cd ..
# build
cargo build --release
```