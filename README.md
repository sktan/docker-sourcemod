# docker-sourcemod

A Docker image to help with compiling sourcemod plugins

This will compile your plugin against the latest version of sourcemod (currently 1.9 builds)

## To use this using the pre-built docker image
https://hub.docker.com/r/sktan/docker-sourcemod

To compile a plugin, please follow the instructions below and replace the variables

```
# PULL THE DOCKER CONTAINER FROM DOCKER HUB
docker pull sktan/docker-sourcemod

# REPLACE ME WITH YOUR SOURCE DIRECTORY
SM_SOURCE="~/repos/sourcemod-plugin/"
SM_SPLUGIN="testplugin.sp"
SM_CPLUGIN=$(echo $SM_SPLUGIN | sed -e 's/\.sp$/\.smx/')

# BUILD PLUGIN
docker run -v "${SM_SOURCE}:/tmp" sktan/docker-sourcemod "/tmp/${SM_SPLUGIN}" "-o/tmp/${SM_CPLUGIN}" "-i/tmp/"
```

## To use this manually

Build the docker container

```
docker build . -t sourcemod:latest
```

To compile a plugin, please follow the instructions below and replace the variables

```
# REPLACE ME WITH YOUR SOURCE DIRECTORY
SM_SOURCE="~/repos/sourcemod-plugin/"
SM_SPLUGIN="testplugin.sp"
SM_CPLUGIN=$(echo $SM_SPLUGIN | sed -e 's/\.sp$/\.smx/')

# BUILD PLUGIN
docker run -v "${SM_SOURCE}:/tmp" sourcemod "/tmp/${SM_SPLUGIN}" "-o/tmp/${SM_CPLUGIN}" "-i/tmp/"
```
