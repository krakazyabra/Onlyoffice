# Onlyoffice
Build your own OnlyOffice from sources without any user limits

Note: The solution has been tested on Ubuntu 18.04.5 LTS (Bionic).

This repo will allow you build your own OnlyOffice DocumentServer without Connections limit. Set as many connections as you want in https://github.com/krakazyabra/Onlyoffice/blob/main/Dockerfile#L5 and build image by `docker build .` 
In the end of building, there will be created folder `out` inside image in `build_tools/out/`

Image uses official instructions from https://github.com/ONLYOFFICE/build_tools inside. Raw size of compiled image is ~24Gb.

For my purposes this is enought, but you can use this image in multi-stage builds or copy folder with Onlyoffice to your own destination.
