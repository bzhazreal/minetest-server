build:
	docker build -t jdll-minetest-server ./

run:
	docker run --rm -p 30000:30000/udp jdll-minetest-server --server

.PHONY: build