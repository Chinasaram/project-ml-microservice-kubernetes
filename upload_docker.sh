#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nahsir/project_4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u nahsir
docker tag project_4 $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath