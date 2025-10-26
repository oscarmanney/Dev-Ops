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


# Add and commit initial files
echo "Adding initial files and committing..."
git add .
git commit -m "Initial commit"

# Connect to a remote repository if provided
if [ -n "$REMOTE_URL" ]; then
  echo "Adding remote origin: $REMOTE_URL"
  git remote add origin "$REMOTE_URL"
  echo "Pushing initial commit to remote..."
  git push -u origin main # or master, depending on your default branch name
fi

