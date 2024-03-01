all: build

build:
	docker run --rm --name rust -it --user "$(id -u)":"$(id -g)" \
		-v "${PWD}":/usr/src/myapp \
		-w /usr/src/myapp rust:1.23.0 \
		cargo build --release

clean:
	sudo rm -rf ./target
