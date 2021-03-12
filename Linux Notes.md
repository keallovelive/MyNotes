## Archlinux Application
qq  
zsh  
yay  
libpfs#mtp協議
clementine#音乐播放器  
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
GIMP#图像处理  
wqy-microhei#WineqqFont


## Archlinux 环境配置
UEFI启动如果启动不了需要将主板全面改成UEFI启动  
systemd服务目录 /usr/lib/systemd/system/  
获取源 rankmirrors -c China 至 /etc/pacman.d/mirrorslist  
编辑/etc/pacman.conf  
[archlinuxcn]  
Server= *************

## 安装输入法
sudo pacman -S fcitx5-im #基础包组
sudo pacman -S fcitx5-chinese-addons #官方中文输入引擎
sudo pacman -S fcitx5-anthy #日文输入引擎
sudo pacman -S fcitx5-pinyin-moegirl #萌娘百科词库 二刺猿必备(ArchLinuxCn)
sudo pacman -S fcitx5-material-color #主题
添加输入法配置文件 ～/.pam_environment
INPUT_METHOD DEFAULT=fcitx5  
GTK_IM_MODULE DEFAULT=fcitx5  
QT_IM_MODULE DEFAULT=fcitx5  
XMODIFIERS DEFAULT=\@im=fcitx5   
SDL_IM_MODULE DEFAULT=fcitx
## Vim 提权保存
:w !sudo tee %
## Clash For Linux
sudo pacman -S clash
编辑~/.config/
config.yaml 订阅配置文件
country.mmdb 全球ip库
访问clash.razord.top
## Shadowsocks-libev
启动 systemctl start shadowsocks-libev@xx.service
## GitHub
git clone location
git add location
git commit 
git push

