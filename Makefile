###
#
# Minetest makefile.
#
###

# Build local container
build:
	docker build --rm -t jdll-minetest-server ./

# Run container locally
run:
	docker run --rm -p 30000:30000/udp jdll-minetest-server --server

# Execute container as interactiv mod
tty:
	docker run --rm -it -p 30000:30000/udp --entrypoint bash jdll-minetest-server

# Delete local image container
delete:
	docker rmi jdll-minetest-server

# Prompt makefile help
help:
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

.PHONY: build run tty delete help