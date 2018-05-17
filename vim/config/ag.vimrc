" Requires the_silver_searcher
" RUNING :Ag [options] {pattern} [{directory}]
" e    to open file and close the quickfix window
" o    to open (same as enter)
" go   to preview file (open but maintain focus on ag.vim results)
" t    to open in new tab
" T    to open in new tab silently
" h    to open in horizontal split
" H    to open in horizontal split silently
" v    to open in vertical split
" gv   to open in vertical split silently
" q    to close the quickfix window
let g:ag_highlight=1
let g:ag_working_path_mode='r'
let g:ag_prg='ag --vimgrep --smart-case --silent --stats
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore .log
  \ --ignore node_modules/
  \ --ignore tmp/
  \ --ignore log/
  \ --ignore vendor/
  \ --ignore dist/'
let g:ctrlp_user_command = 'ag %s -i --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore .log
  \ --ignore dist/
  \ -g ""'
let g:ctrlp_use_caching = 0
nnoremap AG :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap ag :Ag!<SPACE>
