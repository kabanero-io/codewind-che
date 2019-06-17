# Codewind Assembly for Che
Assembly for Codewind branded version of Che

[![Eclipse License](https://img.shields.io/badge/license-Eclipse-brightgreen.svg)](https://github.ibm.com/dev-ex/tempest/blob/master/LICENSE)

## Build

`$ mvn clean install`

This creates the main assembly in `assembly/main/target/codewind-che-assembly-main`

## Package

`$ docker build --force-rm -t codewind-che .`

This creates the `codewind-che` docker image

## References

This repo is created based on the following:

- https://github.com/che-samples/che-ide-server-extension
- https://github.com/redhat-developer/codeready-workspaces

## Contributing
We welcome submitting issues and contributions.
1. [Submitting bugs](https://github.com/eclipse/codewind/issues)
2. [Contributing](CONTRIBUTING.md)

## License
[EPL 2.0](https://www.eclipse.org/legal/epl-2.0/)
