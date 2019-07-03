# Kabanero Assembly for Che

Assembly for Kabanero branded version of Che

[![Eclipse License](https://img.shields.io/badge/license-Eclipse-brightgreen.svg)](https://www.eclipse.org/legal/epl-2.0/)

## Build

`$ mvn clean install`

This creates the main assembly in `assembly/main/target/kabanero-che-assembly-main`

## Package

`$ docker build --force-rm -t kabanero-che .`

This creates the `kabanero-che` docker image

> You can also use the provided `build.sh` script to build and package in one step.

## References

This repo is created based on the following:

- https://github.com/che-samples/che-ide-server-extension
- https://github.com/redhat-developer/codeready-workspaces

## Contributing

We welcome submitting issues and contributions.

1. [Submitting bugs](https://github.com/kabanero-io/kabanero-che/issues)
2. [Contributing](CONTRIBUTING.md)

## License

[EPL 2.0](https://www.eclipse.org/legal/epl-2.0/)
