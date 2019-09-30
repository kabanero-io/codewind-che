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

Refer to the [instructions](https://www.eclipse.org/codewind/installoncloud.html) to setup a [Codewind](https://codewind.dev)-ready install of Che, but with a modification to the `cheImage` and `cheImageTag` properties in the [`codewind-checluster.yaml`](https://github.com/eclipse/codewind-che-plugin/blob/master/setup/install_che/che-operator/codewind-checluster.yaml) file:

```yaml
spec:
  server:
    # server image used in Che deployment
    cheImage: 'kabanero/kabanero-che'
    # tag of an image used in Che deployment
    cheImageTag: 'latest'
```

> If you've built the `kabanero-che` image yourself per instructions above, then you must push the image to a public registry (e.g. Docker Hub) and adjust the value of the `cheImage` property accordingly.

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
