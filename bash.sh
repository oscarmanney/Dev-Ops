#!/bin/bash
#
#Check if Git is insalled
if ! command -v git &> /dev/null; then
	echo "git is not insatlled. Installing Git..."
	sudo apt-get update
	sudo apt-get install -y git
fi

# Create a directoy and Navigate into it
repo_directoy="Dev-Ops"
if [ ! -d "$repo_directory" ]; then
	echo "Creating directoy: $repo_directory"
	mkdir "$repo_directory"
fi
