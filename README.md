# JDLL minetest server container

This repo contains a containerized minetest server for [Lyon JDLL](https://www.jdll.org/)

## License

This repository is shared under AGPL v3 license.

See AGPL v3 licence for more information [GNU AGPL v3](https://www.gnu.org/licenses/agpl-3.0.fr.html)

## Required tools

A container manager system is required :

### Production tools

A container engine :

- [moby-engine](https://mobyproject.org/)
- [docker](https://www.docker.com/)
- [podman](https://podman.io/)


### Development tools

A container engine :

- [moby-engine](https://mobyproject.org/)
- [docker](https://www.docker.com/)
- [podman](https://podman.io/)

Make to used makefile commands :

- [Make](https://www.gnu.org/software/make/)

A minetest client to enjoy your local server :

- [Minetest client](https://www.minetest.net/downloads/)

## Development :

Commands :

```sh
# Build the container locally
make build
# or docker build -t jdll-minetest-server ./

# Run the container locally
make run
# or docker run --rm -p 30000:30000/udp jdll-minetest-server --server
```