" 折叠代码
nnoremap <space><space> za
nnoremap <space>o zR
nnoremap <space>c zM
" 快捷方式：窗口跳转
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" buffer 保存关闭
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <Leader>W :w !sudo tee % > /dev/null<CR>
" 快捷方式：从剪切板粘贴
nnoremap <space>p "+p
" 快捷方式：复制到剪切板
vnoremap <space>y "+y
" buffer 切换
nnoremap H :bp<CR>
nnoremap L :bn<CR>
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
nnoremap <Leader><Leader> <C-^>
" 关闭匹配高亮
nnoremap -hl :nohlsearch<cr>
" 打开匹配高亮
nnoremap +hl :set hlsearch<cr>
inoremap jk <Esc>
inoremap JK <Esc>
" 快捷方式：编辑配置文件
nnoremap <Leader>ev :e $MYVIMRC<CR>
" 快捷方式：使配置生效
nnoremap <Leader>sv :source $MYVIMRC<CR>
" 快捷方式切换当前工作路径到打开 buffer 的目录下
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Tab 操作
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

