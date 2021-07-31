#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=anupshar/udacity-proj4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment housingprice --image=anupshar/udacity-proj4:latest 


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/housingprice 8000:80
