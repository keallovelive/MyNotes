#!/bin/bash
pacman -S yay linuxqq clash aria2 netease-cloud-music google-chrome-stable virtualbox fcitx5-im fcitx-chinese-addons fcitx5-pinyin-moegirl

#Aria2
mkdir $HOME/.aria2
touch $HOME/.aria2/aria2.session

#Aria2.conf
echo "## 文件保存设置 ##

# 下载目录。可使用绝对路径或相对路径, 默认: 当前启动位置
dir=/home/lovelive/Downloads

# 启用磁盘缓存, 0 为禁用缓存，默认:16M
# 路由器或 NAS 等本地设备建议在有足够的内存空闲情况下设置为适当的大小，以减少磁盘 I/O 延长硬盘寿命，但不要超过可用内存空间大小。
disk-cache=64M

# 文件预分配方式, 可选：none, prealloc, trunc, falloc, 默认:prealloc
# 预分配对于机械硬盘可有效降低磁盘碎片、提升磁盘读写性能、延长磁盘寿命。
# 机械硬盘使用 ext4（具有扩展支持），btrfs，xfs 或 NTFS（仅 MinGW 编译版本）等文件系统建议设置为 falloc
# 若无法下载，提示 fallocate failed.cause：Operation not supported 则说明不支持，请设置为 none
# prealloc 分配速度慢, trunc 无实际作用，不推荐使用。
# 固态硬盘不需要预分配，只建议设置为 none ，否则可能会导致双倍文件大小的数据写入，从而影响寿命。
file-allocation=falloc

max-concurrent-downloads=100

# 断点续传
continue=true


## 进度保存设置 ##

# 从会话文件中读取下载任务
input-file=/home/lovelive/.aria2/aria2.session

# 在 Aria2 退出时保存\`错误/未完成\`的下载任务到会话文件
save-session=/home/lovelive/.aria2/aria2.session

# 定时保存会话的间隔时间（秒）, 0 为进程正常退出时保存, 默认:0
#save-session-interval=1

# 自动保存任务进度的间隔时间（秒），0 为进程正常退出时保存，默认：60
#auto-save-interval=1

force-save=true

## BT/PT 下载设置 ##

# BT 监听端口(TCP), 默认:6881-6999
listen-port=51413

# DHT 网络监听端口(UDP), 默认:6881-6999
dht-listen-port=51413

# 启用 IPv4 DHT 功能, PT 下载(私有种子)会自动禁用, 默认:true
enable-dht=true

# IPv4 DHT 文件路径，默认：\$HOME/.aria2/dht.dat
dht-file-path=/home/lovelive/.aria2/dht.dat

# 本地节点查找, PT 下载(私有种子)会自动禁用 默认:false
bt-enable-lpd=true

# 启用节点交换, PT 下载(私有种子)会自动禁用, 默认:true
enable-peer-exchange=true

# 单个种子最大连接数，0为不限制，默认:55
bt-max-peers=0

# 期望下载速度。BT 下载速度低于此选项设置的值时临时提高连接数来获得更快的下载速度，单位 K 或 M 。默认:50K
bt-request-peer-speed-limit=5M

# 最小分享率。当种子的分享率达到此选项设置的值时停止做种, 0 为一直做种, 默认:1.0
# 强烈建议您将此选项设置为大于等于 1.0
seed-ratio=0

# 做种前检查文件哈希, 默认:true
bt-hash-check-seed=true

# 保存通过 WebUI(RPC) 上传的种子文件(.torrent)，默认:true
# 所有涉及种子文件保存的选项都建议开启，不保存种子文件有任务丢失的风险。
# 通过 RPC 自定义临时下载目录可能不会保存种子文件。
rpc-save-upload-metadata=false

# 删除 BT 下载任务中未选择文件，默认:false
bt-remove-unselected-file=true

# BT强制加密, 默认: false
# 启用后将拒绝旧的 BT 握手协议并仅使用混淆握手及加密。可以解决部分运营商对 BT 下载的封锁，且有一定的防版权投诉与迅雷吸血效果。
# 此选项相当于后面两个选项(bt-require-crypto=true, bt-min-crypto-level=arc4)的快捷开启方式，但不会修改这两个选项的值。
bt-force-encryption=true

## RPC 设置 ##

# 启用 JSON-RPC/XML-RPC 服务器, 默认:false
enable-rpc=true

# 接受所有远程请求, 默认:false
rpc-allow-origin-all=true

# 允许外部访问, 默认:false
rpc-listen-all=true

# RPC 监听端口, 默认:6800
rpc-listen-port=6800


## BitTorrent trackers ##
bt-tracker=udp://tracker.opentrackr.org:1337/announce,udp://tracker.internetwarriors.net:1337/announce,udp://exodus.desync.com:6969/announce,udp://tracker.cyberia.is:6969/announce,udp://explodie.org:6969/announce,udp://tracker.cyberia.is:6969/announce,udp://explodie.org:6969/announce,udp://opentracker.i2p.rocks:6969/announce,udp://47.ip-51-68-199.eu:6969/announce,http://open.acgnxtracker.com:80/announce,udp://www.torrent.eu.org:451/announce,udp://tracker.torrent.eu.org:451/announce,udp://tracker.tiny-vps.com:6969/announce,udp://tracker.ds.is:6969/announce,udp://open.stealth.si:80/announce,udp://retracker.lanta-net.ru:2710/announce,udp://tracker.moeking.me:6969/announce,http://tracker.dler.org:6969/announce,udp://ipv4.tracker.harry.lu:80/announce,udp://valakas.rollo.dnsabr.com:2710/announce,udp://opentor.org:2710/announce,https://trakx.herokuapp.com:443/announce" >$HOME/aria2.conf

#Aria2 Startup
echo "[Unit]
Description=Aria2 Daemon

[Service]
Type=forking
ExecStart=/usr/bin/aria2c --conf-path=/home/lovelive/.aria2/aria2.conf -D

[Install]
WantedBy=default.target" >/etc/systemd/system/aria2.service

#Clash Startup
echo "[Unit]
Description=Clash Daemon

[Service]
Type=simple
User=lovelive
ExecStart=/usr/bin/clash

[Install]
WantedBy=default.targe" >/etc/systemd/system/clash.service

#Fcitx5 Startup
echo "INPUT_METHOD DEFAULT=fcitx5
GTK_IM_MODULE DEFAULT=fcitx5
QT_IM_MODULE DEFAULT=fcitx5
XMODIFIERS DEFAULT=\@im=fcitx5
SDL_IM_MODULE DEFAULT=fcitx" >$HOME/.pam_environment
