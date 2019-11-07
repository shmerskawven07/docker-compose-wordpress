#!/usr/bin/env bash

docker build -t username/image_name:tag_name .

docker save --output saved-image.tar my-image:1.0.0