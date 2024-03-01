all: build

dev:
	docker run --rm --name rust -it --user "$(id -u)":"$(id -g)" \
		-v "${PWD}":/usr/src/myapp \
		-w /usr/src/myapp rust:1.23.0 \
		/bin/sh

build:
	docker run --rm --name rust --user "$(id -u)":"$(id -g)" \
		-v "${PWD}":/usr/src/myapp \
		-w /usr/src/myapp rust:1.23.0 \
		cargo build --release

clean:
	sudo rm -rf ./target
