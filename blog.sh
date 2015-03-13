#!/bin/bash
docker rm -f blog
docker rm -f blog_test
docker run -tid -v ~/docker/projects/blog/simonopitz.me:/simonopitz.me --name blog --env stage=production localhost:5000/blog
docker run -tid -v ~/docker/projects/blog/simonopitz.me:/simonopitz.me --name blog_test --env stage=testing localhost:5000/blog
