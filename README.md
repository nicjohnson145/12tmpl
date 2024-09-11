# 12tmpl

> But why though?

There's lots of good software out there. But there's also a fair amount that insists that the entirety of the apps
configuration be present in one configuration file. This is great for simplicity, but is not so great when that config
file needs to contain secrets interspersed with plain config. This leaves those of us using a Kubernetes/GitOps
deployment model with 2 choices:

* Put the whole config file in a Secret/SealedSecret
* Due the insecure thing and leave it all in a ConfigMap

Neither really feel great. This repo is designed to be used as an init container for a pod, where the config file can be
stored as a ConfigMap, and any secret values therein replaced with [gomplate compatible
replacements](https://docs.gomplate.ca/). This init container will do the subsitutions and render the full config for
the main container in the pod.

## Examples

See [a super basic example](./hack/basic-example/example.yaml) for an example usage