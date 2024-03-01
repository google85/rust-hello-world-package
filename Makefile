all: build

build:
	docker run --rm --name rust -it --user "$(id -u)":"$(id -g)" \
		-v "${PWD}/hello-world":/usr/src/myapp \
		-w /usr/src/myapp rust:1.23.0 \
		cargo build --release

clean:
	rm -rf ./hello-world/target
