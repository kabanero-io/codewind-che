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

## Installing on Kabanero

Prerequisite: Kabanero on Kubernetes (see the [requirements](https://github.com/kabanero-io/roadmap/blob/master/README.md#kabanero-foundation-in-a-kubernetes-cluster-prerequisites))

Refer to the [instructions](https://www.eclipse.org/codewind/installoncloud.html) to setup a [Codewind](https://codewind.dev)-ready install of Che. Specifically, you should follow the steps for setting up on OKD, but specify a value to the `--image-che` parameter when invoking the deployment script.

That is, under the section titled "Setting up OKD and OpenShift", for step #3 instead of:

3. Deploy Che with `./deploy_che.sh`

Do this:

3. Deploy Che with `./deploy_che.sh --image-che=kabanero/kabanero-che:latest`

> If you've built the `kabanero-che` image yourself per instructions above, then you must push the image to a public registry (e.g. Docker Hub) and adjust the value of the `--image-che` parameter accordingly.

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
