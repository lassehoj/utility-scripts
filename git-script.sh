#!/bin/bash

pushd . > /dev/null

cd $1
echo "Entering: $1"
echo ''
echo ''


echo ''

touch .gitignore

# latex ignore
echo '*.aux' >> .gitignore
echo '*.dvi' >> .gitignore
echo '*.log' >> .gitignore
echo '*.toc' >> .gitignore

echo 'afl.pdf' >> .gitignore
echo 'master.pdf' >> .gitignore

echo '*.class' >> .gitignore 		# java
echo '.svn' >> .gitignore			# subversion
echo '.bak' >> .gitignore			# backup-files
echo '*~' >> .gitignore				# vim (maybe)
echo '#*#' >> .gitignore			# emacs
echo '*.swp' >> .gitignore			# vim
echo '*.o' >> .gitignore			# object files (C etc)
echo '*.hi' >> .gitignore			# haskell

git init . 
git add .
git ci -m "Initial commit."
echo ''
echo "Adding to repos: $2"
git remote add origin $2
git push -u origin master
popd > /dev/null
