#!/bin/sh 

befpwd=$PWD                                                     
echo $befpwd

cd ~
mkdir -pv .vimtmp
cd .vimtmp
rm -vfr *
cd ..

cp -vf  .vimrc ~/.vimtmp
cp -vfr .vim   ~/.vimtmp

cd $befpwd
cp -vf  .vimrc ~
cp -vfr .vim   ~

echo "安装成功"
echo "    原先的vim配置文件已经被保存在.vimtmp目录下"

exit 0
