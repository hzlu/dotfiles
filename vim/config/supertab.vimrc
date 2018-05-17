" Tab 补全
" let g:SuperTabRetainCompletionType=2 " 记住上次的补全方式,直到按ESC退出插入模式为止
" let g:SuperTabDefaultCompletionType = "<C-x><C-o>"
let g:SuperTabDefaultCompletionType = "<c-p>"
" 自动完成使用TAB键
function! InsertTabWrapper()
  let col=col('.')-1
  if !col || getline('.')[col-1] !~ '\k'
    return "\<TAB>"
  else
    return "\<c-p>"
  endif
endfunction
"将InsertTabWrapper映射到TAB上
inoremap <TAB> <C-R>=InsertTabWrapper()<CR>
