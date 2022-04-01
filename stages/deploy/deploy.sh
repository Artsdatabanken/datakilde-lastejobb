#!/bin/bash
# Clone https://github.com/Artsdatabanken/datakilde.git into destination
source=/home/lerke/gitstuff/datakilde-lastejobb/build/
destination=/home/lerke/gitstuff/datakilde

if [ ! -d "$destination" ] || [ ! -d "$source" ]
then
echo "Please check folders defined in stages/deploy/deploy.sh"
else
rsync -avu $source $destination
cd $destination
echo "$PWD"
git status
git stage .
git commit -m "Updated datakilde."
git push
fi
