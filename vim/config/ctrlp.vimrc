" C-f C-b 模式切换 C-r 正则匹配模式
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_max_height=15
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_match_window_bottom=1
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_match_window_reversed=0 " Sort the list top to bottom
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
      \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
      \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " vim 自带 exclude files
