# docker-kubectl

This Docker image provides kubectl with additional plugins for Kubernetes management.

## Building the Docker image

You can build the Docker image using the provided Makefile:

```bash
make build
```

### Customizing the build

You can customize the build by specifying different parameters:

- `BASE_IMAGE_VERSION`: The version of the base alpine/k8s image (default: 1.35.1)
- `IMAGE_TAG`: The tag for the Docker image (default: latest)

Note: The final image tag will be automatically prefixed with the base image version. For example, if `BASE_IMAGE_VERSION` is 1.30.0 and `IMAGE_TAG` is 1, the final image tag will be 1.30.0-1.

Examples:

```bash
# Build with a custom tag (results in image tagged as 1.35.1-1)
make IMAGE_TAG=1 build

# Build with a custom base image version (results in image tagged as 1.30.0-latest)
make BASE_IMAGE_VERSION=1.30.0 build

# Build with custom tag and base image version (results in image tagged as 1.30.0-1)
make IMAGE_TAG=1 BASE_IMAGE_VERSION=1.30.0 build
```

## Default kubeconfig location

By default, kubectl searches for a configuration file in the following location:

- `~/.kube/config`

