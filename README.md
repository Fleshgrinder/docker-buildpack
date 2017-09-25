# Docker Buildpack
Official Docker CE image with the following additional software installed:

- `bash`
- `ca-certificates`
- `curl`
- `docker-compose`
- `git`
- `make`
- `tar`

This image has an extended `PATH` variable where the following two locations
where added:

- `/usr/local/src/bin`
- `/usr/local/src/.ci/bin`

This allows projects to add their executables in these locations and execute
the scripts directly, without any further ado.

There is also a predefined `/var/cache/docker` directory is available,
specifically for CI environments that have caching support (e.g. [CircleCI]).

[CircleCI]: https://circleci.com/
