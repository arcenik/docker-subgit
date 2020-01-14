### SubGit in a docker.

[![CircleCI Build Status](https://img.shields.io/circleci/project/arcenik/docker-subgit/master.svg)](https://circleci.com/gh/arcenik/docker-subgit)
[![GitHub Open Issues](https://img.shields.io/github/issues/arcenik/docker-subgit.svg)](https://github.com/arcenik/docker-subgit/issues)
[![GitHub Stars](https://img.shields.io/github/stars/pozgo/docker-subgit.svg)](https://github.com/arcenik/docker-subgit)
[![GitHub Forks](https://img.shields.io/github/forks/pozgo/docker-subgit.svg)](https://github.com/arcenik/docker-subgit)  
[![Stars on Docker Hub](https://img.shields.io/docker/stars/francois75/subgit.svg)](https://hub.docker.com/r/francois75/subgit)
[![Pulls on Docker Hub](https://img.shields.io/docker/pulls/francois75/subgit.svg)](https://hub.docker.com/r/francois75/subgit)  
[![](https://images.microbadger.com/badges/version/francois75/subgit.svg)](https://microbadger.com/images/francois75/subgit)
[![](https://images.microbadger.com/badges/license/francois75/subgit.svg)](https://microbadger.com/images/francois75/subgit)
[![](https://images.microbadger.com/badges/image/francois75/subgit.svg)](https://microbadger.com/images/francois75/subgit)

[Docker Image](https://registry.hub.docker.com/u/polinux/subgit/) with SubGit. It's using tiny image provided by Alpine.  

[SubGit Website](https://subgit.com/)  

Purpose of this image was to simplify the process of using SubGit.

Workdir is set to `/subgit`

### Usage

    docker run \
      -ti \
      --name subgit \
      polinux/subgit \
      subgit <subgit-commands>

Mount Volume into working directory

    docker run \
      -ti \
      --name subgit \
      -v ${PWD}/workdir:/subgit \
      polinux/subgit \
      subgit <subgit-commands>

### Build

    docker build -t polinux/subgit .

Docker troubleshooting
======================

Use docker command to see if all required containers are up and running:
```
$ docker ps
```

Check logs of subgit server container:
```
$ docker logs subgit
```

Sometimes you might just want to review how things are deployed inside a running
 container, you can do this by executing a _bash shell_ through _docker's
 exec_ command:
```
docker exec -ti subgit /bin/bash
```

History of an image and size of layers:
```
docker history --no-trunc=true polinux/subgit | tr -s ' ' | tail -n+2 | awk -F " ago " '{print $2}'
```

## Author

Przemyslaw Ozgo (<linux@ozgo.info>)
Francois Scala (<github@arcenik.net>)
