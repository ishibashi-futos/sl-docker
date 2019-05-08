#!/bin/bash

docker build -t sl:alpine . && docker run -it --rm sl:alpine
