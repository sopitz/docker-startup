#!/bin/bash
docker run -tid -v ~/docker/projects/blog/simonopitz.me:/simonopitz.me --name blog localhost:5000/blog
