# builder

A docker collection of build environments

Cross-compile from all to all and app specific

Generic cross-compile
environments, extendable, environments set up, common libraries.



## Repos

 - `builder` (amd64) default architecture
 - `builder-arm32v7` armhf architecture (RPI 2/3)
 - `builder-amr32v6` arm   architecture (RPI 1)


Images are, as much as possible duplicated across the host specific environments

## Tags

**Generic Images**

 - `base` `latest` base build image (repo dependent, host compile)
 - `aarch64` cross-compile to armv8, linux abi
 - `armhf-linux` cross-compile to armhf (armv7), linux abi
 - `armhf-none` cross-compile to armhf (armv7), baremetal
 - `arm-linux` cross-compile to arm (armv4, armv5, armv6), linux abi
 - `arm-none` cross-compile to arm (armv4, armv5, armv6), baremetal

