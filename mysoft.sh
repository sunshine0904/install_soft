#!/bin/bash

#配置chrome安装源
wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

apt-get update;
apt-get install -f;

#1、安装vim并配置
#参考大神配置脚本自动化安装；
:<<BLOCK
1)简易安装方法：

打开终端，执行下面的命令就自动安装好了：

wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x

2)手动安装：(以ubuntu为例)

安装vim sudo apt-get install vim
安装ctags：sudo apt-get install ctags
安装一些必备程序：sudo apt-get install xclip vim-gnome astyle python-setuptools
python代码格式化工具：sudo easy_install -ZU autopep8
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
clone配置文件：cd ~/ && git clone git://github.com/ma6174/vim.git
mv ~/vim ~/.vim
mv ~/.vim/.vimrc ~/
clone bundle 程序：git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
打开vim并执行bundle程序:BundleInstall
重新打开vim即可看到效果
BLOCK

wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x

#2、安装git、subversion、chrome、wireshark
apt-get install git;
apt-get instasll subversion;
apt-get install wine;
apt-get install google-chrome-stable;
apt-get install wireshark；

#3、安装串口软件picocom、
apt-get install picocom;

#4、图形界面发包工具packETH
git clone https://github.com/jemcek/packETH.git;
cd packETH
./autogen.sh
./configure
make
make install
cp packETH /usr/bin/

#5、安装wps office及中文字体库
#官网：http://wps-community.org/
#安装wps office
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_i386.deb
sudo dpkg -i wps-office_10.1.0.5707~a21_i386.deb 

#安装字体库
wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb

#6、安装subline-text-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3;
sudo apt-get update;
sudo apt-get install sublime-text-installer;



#7、安装截图工具shutter
sudo apt-get install shutter;
#设置快捷键：打开setting--》keyboard setting---》添加title：shutter  commond：shutter -s ；点击disable 快速按下ctrl `即可快速设置快捷键。


#8、映射空格键为vim退出键
nmap <space> <s-:>


#9、安装分屏利器tmux
sudo apt-get install tmux
#download配置文件：
wget https://github.com/zhaohuaxishi/dotfiles/blob/master/.tmux.conf ~/
