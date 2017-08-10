# builder:pbuilder

Branch for pbuilder, build debian packages

## Running

Because pbuilder is a chroot, must be run privileged 

- create a pbuilder space

`docker run -v "$PWD:/workspace" --privileged akshmakov/builder:pbuilder pbuilder create`

- download the source package (or use from web)

`docker run -v "$PWD:/workspace" akshmakov/builder:pbuilder pull-debian-source PACKAGE_NAME`

- build the package

`docker run -v "$PWD:/workspace"  --privileged akshmakov/builder:pbuilder pbuilder build package.dsc`


## Docker-compose

Use for your build environments in docker-compose

```docker-compose.yml
version: '2'

services:
  pbuilder:
    image: akshmakov/builder:pbuilder
    volumes:
      - "./:/workspace"
    env_file: # optional
      - pbuilder.env
    entrypoint: [ "pbuilder" ]

  update:
    extends: pbuilder
    command: update
    
  build:
    extends: pbuilder
    entrypoint: [ "pbuilder" , "build" ]
```

initialize the pbuilder for our target distribution (defaults to container distribution)

`docker-compose run init`

build a package

`docker-compose run build my-package.dsc`


## Using built packages for further dependencies



    
  