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


#10、翻墙软件安装
ssr、v2ray获取网站：http://free-ss.tk/ ；ssr获取邮箱：ss@rohankdd.com

#1）ssr
#ssr安装配置（参考blog：https://www.djangoz.com/2017/08/16/linux_setup_ssr/）：
#脚本丢失请百度网盘查找
wget --no-check-certificate https://www.djangoz.com/ssr
sudo mv ssr /usr/local/bin
sudo chmod 766 /usr/local/bin/ssr
ssr install
ssr config


#2）v2ray
#安装请参考页面https://toutyrater.github.io/prep/install.html
#脚本丢失请百度网盘查找
wget https://install.direct/go.sh
sudo bash go.sh



#11、安装awn桌面工具
:<<BLOCK
Avant Window Navigator主页：https://launchpad.net/awn/
theme下载：http://wiki.awn-project.org/Themes
Applets下载：http://wiki.awn-project.org/Applet_Gallery
图标下载：http://guistyles.com/category/icons/dock-icons/ 
BLOCK
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install avant-window-navigator


#12、git初始化
#1)、生成ssh指纹
    ssh-keygen -t rsa -b 4096 -C "sunshine0904"
#2）、添加ssh到ssh-agent中
    eval "$(ssh-agent -s)"
#3)、github上添加公钥

#4)、关联本地仓库和远程仓库的方法见博客
#https://blog.csdn.net/sun172270102/article/details/50932210
