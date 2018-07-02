augroup vimrcEx
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置更改立即生效
  autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
  autocmd BufRead,BufNewFile Appraisals    set filetype=ruby
  autocmd BufRead,BufNewFile *.jbuilder    set filetype=ruby
  autocmd BufRead,BufNewFile *.axlsx       set filetype=ruby
  autocmd BufRead,BufNewFile *.eco         set filetype=html
  autocmd BufRead,BufNewFile *.coffee      set filetype=coffee
  autocmd BufRead,BufNewFile *.ts          set filetype=javascript
  autocmd BufRead,BufNewFile *.slim        set filetype=slim
  autocmd BufRead,BufNewFile *.sass,*.scss set foldmethod=indent
  autocmd BufRead,BufNewFile *.coffee      set foldmethod=indent
  autocmd BufRead,BufNewFile *.erb,*.eco   set foldmethod=indent
  autocmd BufNewFile,BufRead *.ejs         set filetype=html
  autocmd BufNewFile,BufRead *.styl        set filetype=sass
  autocmd FileType ruby,eruby              set omnifunc=rubycomplete#Complete
  autocmd FileType javascript,coffee       set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType css,sass,scss           set omnifunc=csscomplete#CompleteCSS
  autocmd FileType html                    set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType xml                     set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
  autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
  autocmd FileType css,scss,slim,html,eruby,coffee,javascript set iskeyword+=-
  autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
  autocmd BufRead,BufWritePre *.html :normal gg=G
  autocmd FileType vue syntax sync fromstart
  " autocmd BufEnter * colorscheme dracula
  " autocmd BufEnter *.rb colorscheme railscasts
  " autocmd BufEnter *.vue,*.js colorscheme monokai
augroup END

