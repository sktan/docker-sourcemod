# docker-sourcemod

A Docker image to help with compiling sourcemod plugins

This will compile your plugin against the latest version of sourcemod (currently 1.9 builds)

## How to use

Build this Docker image manually

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
