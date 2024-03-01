## Hello World in Rust

- build after all structure is created
```bash
/bin/bash
cd hello-world
docker run --rm --name rust -it --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp rust:1.23.0 cargo build --release
```
