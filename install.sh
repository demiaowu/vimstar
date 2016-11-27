#!/bin/sh 

befpwd=$PWD                                                     
echo $befpwd

cd ~
rm -fr .vimrc .vim

cd $befpwd
echo "$PWD"
mv -f .vimrc ~
mv -f .vim ~

exit 0
