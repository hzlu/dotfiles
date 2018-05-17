let g:tagbar_compact=1         " 不显示帮助提示
let g:tagbar_left=0            " 右侧打开
let g:tagbar_vertical=0
let g:tagbar_show_visibility=1
let g:tagbar_width=50
let g:tagbar_zoomwidth=0
let g:tagbar_autofocus=1       " 打开聚焦
let g:tagbar_sort=0            " 不排序
" let g:tagbar_autopreview=1   " 显示预览

" Requirements Universal Ctags
" brew tap universal-ctags/universal-ctags
" brew install --HEAD universal-ctags
set tags+=~/.tags/ruby_tags
function! CreateRubyTags()
  execute '!ctags -f ~/.tags/ruby_tags
  \ -R
  \ --languages=ruby
  \ --exclude=.git --exclude=tmp --exclude=public --exclude=app/assets
  \ $(pwd) $(bundle list --paths)'
endfunction
let g:tagbar_type_ruby = {
  \ 'kinds': [
    \ 'm:modules',
    \ 'c:classes',
    \ 'd:describes',
    \ 'C:contexts',
    \ 'f:methods',
    \ 'F:singleton methods'
  \ ]
\ }

" Requirements Universal Ctags
let g:tagbar_type_css = {
\ 'ctagstype': 'Css',
  \ 'kinds': [
      \ 'c:classes',
      \ 's:selectors',
      \ 'i:identities'
  \ ]
\ }

" Install tern_for_vim
" Navigate to the tern folder and execute in the shell, the following command: npm install
" Install ramitos/jsctags
" npm install -g git+https://github.com/ramitos/jsctags.git
" find . -type f -iregex '.*\.js$' -not -path './node_modules/*' -exec jsctags {} -f \; | sed '/^$/d' | sort > js_tags
set tags+=~/.tags/js_tags
function! CreateJSTags()
  execute '!find . -type f -iregex ".*\.js$"
  \ -not -path "./node_modules/*"
  \ -exec jsctags {} -f \; | sed "/^$/d" | sort > ~/.tags/js_tags '
endfunction

let g:tagbar_type_coffee = {
  \ 'ctagstype': 'coffee',
  \ 'kinds': [
    \ 'c:classes',
    \ 'm:methods',
    \ 'f:functions',
    \ 'v:variables',
    \ 'f:fields',
  \ ]
\ }

nnoremap <leader>tb :TagbarToggle<CR>
