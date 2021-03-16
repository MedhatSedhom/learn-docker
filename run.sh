#!/bin/bash

docker build -t image1 .
docker run -it -p 9999:9999 -v /home/medhat/PycharmProjects/pythonProject/src:/src image1