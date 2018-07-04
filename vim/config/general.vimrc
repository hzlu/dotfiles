filetype plugin indent on                       " 根据侦测到不同类型加载对应插件
syntax enable                                   " 开启语法高亮
colorscheme monokai                             " 外观配置
set t_Co=256                                    " terminal color 开启 256 色支持
set background=dark
" 光标形状
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
let mapleader=','                               " 定义 <Leader>
set timeoutlen=1000                             " <Leader> 键响应时间
set history=500                                 " history 选项必须在 nocompatible 选项后；history 文件记录行数
set shell=/bin/zsh
set nobackup                                    " 不要备份文件
set nowritebackup
set noswapfile                                  " 不要生成 swap 文件
set autowrite                                   " 执行命令前自动保存
set autoread                                    " 文件在vim外修改过，自动重新读入
set confirm                                     " 处理未保存或只读文件时弹出确认
set cursorline
set cursorcolumn
set textwidth=100                               " 每行最大字符数
let &colorcolumn="80,".join(range(100,999),",")
set showtabline=1                               " 显示标签页
set number numberwidth=4                        " 显示行号，行号宽度
set linespace=0
set scrolloff=10                                " 光标编辑行距离顶部或底部的保留行数
set ruler                                       " 在屏幕下方显示标尺
set showcmd                                     " 屏幕右下角显示未完成的指令输入
set tabstop=2                                   " 两空格代替 Tab
set softtabstop=2
set expandtab                                   " 插入空格代替 Tab
set shiftwidth=2
set shiftround                                  " 按住 shift 再连按两次 > 或 < 可以整行缩进
set splitbelow                                  " 新分割窗口在下边
set splitright                                  " 新分割窗口在右边
" 语言编码相关
set langmenu=zh_cn
set helplang=cn
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb18030,gbk,big5,gb2312
set backspace=indent,eol,start
" 搜索相关
set incsearch                                   " 开启实时搜索功能
set wrapscan                                    " 循环搜索开头
set hlsearch                                    " 高亮显示搜索的内容
set smartcase                                   " 智能大小写搜索
" 缩进折叠
set autoindent
set foldmethod=indent
set foldlevel=1
set nofoldenable                                " 启动 vim 时关闭折叠代码
" miscellaneous
set matchpairs+=<:>,《:》,“:”,‘:’               " 匹配符号之间跳转，使用 % 跳转
set wildmenu                                    " 在命令模式下使用 <Tab> 自动补全使用一个漂亮的单行菜单显示
set wildmode=list:longest,list:full
set completeopt=longest,menu
set omnifunc=syntaxcomplete#Complete            " Omni 补全
" 处理行末空白字符
set list listchars=tab:»·,trail:·
highlight ExtraWhitespace ctermbg=gray

function! TrimWhiteSpace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

augroup extraSpace
  autocmd!
  autocmd BufWinEnter * :match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * :match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * :match ExtraWhitespace /\s\+$/
  autocmd BufWritePre * :call  TrimWhiteSpace()
  autocmd BufWinLeave * :call  clearmatches()
augroup END

