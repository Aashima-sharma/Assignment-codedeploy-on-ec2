#!/bin/bash

# Create the base projects directory
mkdir -p projects

# Create directories with and without 'oriserve'
mkdir -p projects/facebook
mkdir -p projects/google/oriserve
mkdir -p projects/meta/oriserve
mkdir -p projects/oracle

# Find all 'oriserve' directories and create a file containing 'oriserve' inside them
find projects -type d -name 'oriserve' | while read -r oriserve_dir; do
    echo 'oriserve' > "$oriserve_dir/test.txt"
done

# Output directory structure
find projects
