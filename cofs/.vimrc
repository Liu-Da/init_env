"打开语法高亮
syntax on


"显示行号, 或set number
set nu

"高亮显示匹配的括号
set showmatch

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 设置编码格式
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 设置鼠标支持
set mouse=a

" 共享剪贴板
set clipboard^=unnamed,unnamedplus
