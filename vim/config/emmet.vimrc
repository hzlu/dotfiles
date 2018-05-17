  let g:user_emmet_mode='n'                                 " 只在普通模式下启用
  let g:user_emmet_expandabbr_key='<Tab>'
  let g:use_emmet_complete_tag=1
  let g:html_indent_tags='li\|p'                            " Treat <li> and <p> tags like the block tags they are
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,erb,sass,scss,slim EmmetInstall
