#!/bin/sh 

curpwd=$PWD
echo $curpwd

cp -f .vimrc ~
cp -fr .vim ~

exit 0
