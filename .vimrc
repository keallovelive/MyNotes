"关闭vi兼容模式"
set nocompatible

"设置历史记录部署"
set history=1000

"自动开启语法高亮"
syntax enable

"使用空格来替换Tab"
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"显示行数"
set nu

"高亮显示匹配的括号([{和}])"
set showmatch

"自动保存"
set autowrite

"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2
