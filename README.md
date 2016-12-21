# Livy docker image

These images are part of the bigdata docker image series. All of the images use the same [base docker image](https://github.com/elek/docker-bigdata-base) which contains advanced configuration loading. For more detailed instruction see the [README](https://github.com/elek/docker-bigdata-base/blob/master/README.md) in the docker-bigdata-base repository.


## Configuration

The image could be configured:

* With environment variables
* With the key value store of the consul server
* With Spring config server


For examples and more details see the [repository](https://github.com/elek/docker-bigdata-base) of the base image.

## Running

Using the image depends from the configuration loading and the exact use case. You can find multiple examples in [this](https://github.com/elek/bigdata-docker) repository to use the images:

* on the local machine using docker-compose
* on remote cluster using ansible 
* on remote cluster and local macine with using docker-compose downloaded from the consul image. 

### Smoketest

```
docker run --net=host -it elek/livy

curl localhost:8998/sessions -X POST --data '{"kind":"spark"}'  -H "Content-Type: application/json"

curl localhost:8998/sessions

curl localhost:8998/sessions/0/statements -X POST -H 'Content-Type: application/json' -d '{"code":"print(\"asd\")"}'

curl localhost:8998/sessions/0/statements/0
```

## Versioning policy

The latest tag points to the latest configuration loading and the latest stable  version.

If there is plain version tag without prefix it is synchronized with the version of the original software.

It there is a prefix (eg. HDP) it includes a specific version from a specific distribution.

As the configuration loading in the base image is constantly evolving even the tags of older releases may be refreshed over the time.

**As livy currently only supports spark 1.6 the latest version is based on the latest stable 1.6.**

