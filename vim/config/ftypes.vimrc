augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
  autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置更改立即生效
  " autocmd FileType ruby,eruby              set omnifunc=rubycomplete#Complete
  " autocmd FileType javascript,coffee       set omnifunc=javascriptcomplete#CompleteJS
  " autocmd FileType css,sass,scss           set omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html                    set omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
  " autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
  " autocmd FileType css,scss,slim,html,eruby,coffee,javascript set iskeyword+=-
  " autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
  " autocmd BufRead,BufWritePre *.html :normal gg=G
  autocmd FileType vue syntax sync fromstart
  " autocmd BufEnter * colorscheme dracula
  " autocmd BufEnter *.rb colorscheme railscasts
augroup END

