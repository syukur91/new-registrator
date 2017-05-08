# Registrator

Service registry bridge for Docker.

[![Circle CI](https://circleci.com/gh/gliderlabs/registrator.png?style=shield)](https://circleci.com/gh/gliderlabs/registrator)
[![Docker pulls](https://img.shields.io/docker/pulls/gliderlabs/registrator.svg)](https://hub.docker.com/r/gliderlabs/registrator/)
[![IRC Channel](https://img.shields.io/badge/irc-%23gliderlabs-blue.svg)](https://kiwiirc.com/client/irc.freenode.net/#gliderlabs)
<br /><br />

Registrator automatically registers and deregisters services for any Docker
container by inspecting containers as they come online. Registrator
supports pluggable service registries, which currently includes
[Consul](http://www.consul.io/), [etcd](https://github.com/coreos/etcd) and
[SkyDNS 2](https://github.com/skynetservices/skydns/).

Full documentation available at http://gliderlabs.com/registrator

## Getting Registrator

Get the latest release, master, or any version of Registrator via [Docker Hub](https://registry.hub.docker.com/u/gliderlabs/registrator/):

	$ docker pull gliderlabs/registrator:latest

Latest tag always points to the latest release. There is also a `:master` tag
and version tags to pin to specific releases.

## Using Registrator

The quickest way to see Registrator in action is our
[Quickstart](https://gliderlabs.com/registrator/latest/user/quickstart)
tutorial. Otherwise, jump to the [Run
Reference](https://gliderlabs.com/registrator/latest/user/run) in the User
Guide. Typically, running Registrator looks like this:

    $ docker run -d \
        --name=registrator \
        --net=host \
        --volume=/var/run/docker.sock:/tmp/docker.sock \
        gliderlabs/registrator:latest \
          consul://localhost:8500

## Contributing

Pull requests are welcome! We recommend getting feedback before starting by
opening a [GitHub issue](https://github.com/gliderlabs/registrator/issues) or
discussing in [Slack](http://glider-slackin.herokuapp.com/).

Also check out our Developer Guide on [Contributing
Backends](https://gliderlabs.com/registrator/latest/dev/backends) and [Staging
Releases](https://gliderlabs.com/registrator/latest/dev/releases).

## Sponsors and Thanks

Big thanks to Weave for sponsoring, Michael Crosby for
[skydock](https://github.com/crosbymichael/skydock), and the Consul mailing list
for inspiration.

For a full list of sponsors, see
[SPONSORS](https://github.com/gliderlabs/registrator/blob/master/SPONSORS).

## License

MIT

<img src="https://ga-beacon.appspot.com/UA-58928488-2/registrator/readme?pixel" />