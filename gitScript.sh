#!/bin/bash

cd /home/mankirat/Unix_Final_Project
git pull > gitOutputMessage.txt
gitPullOutput=$(cat gitOutputMessage.txt) 
noChangesOutput="Already up to date."

if [[ $gitPullOutput != $noChangesOutput ]]
then
	echo Directory has been changed. Updating jekyll build.
	cd hip-hop
	bundle exec jekyll build
	cp -a _site/. /var/www/html/.
else
	echo Directory is unchanged.
fi
