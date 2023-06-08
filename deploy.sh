#!/bin/bash

# Getting image tag
while getopts ":t:" opt; do
  case $opt in
    t)
      image_tag=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Checking if image tag is provided
if [ -z "$image_tag" ]; then
  echo "Please provide the image tag using the -t flag."
  exit 1
fi

# Variable for helm chart and release name
helm_chart="nginx"
release_name="nginx"

# Variable for the helm folder path
helm_folder="./deployment/nginx"

# Deploy or update the helm chart
helm upgrade --install $release_name $helm_folder \
  --set image.tag=$image_tag
