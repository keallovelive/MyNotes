# Archlinux Application
qq
zsh
yay  
aria2
wps-office#office
latte-duck#duck栏
oh-my-zsh#shell
netease-cloud-music#网易云音乐
virtualbox#虚拟机
baidunetdisk-bin#百度网盘
google-chrome#google-chrome-stable
proxychains#shell代理
komorebi#动态壁纸    
htop#任务管理器
# Archlinux 环境配置
UEFI启动如果启动不了需要将主板全面改成UEFI启动
systemd服务目录 /usr/lib/systemd/system/
获取源 rankmirrors -c China 至 /etc/pacman.d/mirrorslist，编辑 /etc/pacman.conf
# 安装输入法
sudo pacman -S fcitx-im fcitx-configtool
添加输入法配置文件 ～/.xprofile

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
# Vim 提权保存
:w !sudo tee %