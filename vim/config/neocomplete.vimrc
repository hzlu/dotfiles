  let g:acp_enableAtStartup = 0                           " Disable AutoComplPop.
  let g:neocomplete#enable_at_startup = 1                 " Use neocomplete.
  let g:neocomplete#enable_smart_case = 1                 " Use smartcase.
  let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
  function! s:my_cr_function()
    return pumvisible() ? "\<C-y>" : "\<CR>"
  endfunction
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-g> neocomplete#undo_completion()
  inoremap <expr><C-l> neocomplete#complete_common_string()
