nnoremap nt :NERDTreeToggle<CR>
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade'   , 'green'   , 'none' , 'green'   , '#151515')
call NERDTreeHighlightFile('md'     , 'blue'    , 'none' , '#3366FF' , '#151515')
call NERDTreeHighlightFile('yml'    , 'magenta' , 'none' , 'yellow'  , '#E70350')
call NERDTreeHighlightFile('config' , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('conf'   , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('json'   , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('html'   , 'green'   , 'none' , 'green'   , '#04E703')
call NERDTreeHighlightFile('styl'   , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('css'    , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('sass'   , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('scss'   , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('coffee' , 'Red'     , 'none' , 'red'     , '#151515')
call NERDTreeHighlightFile('js'     , 'Red'     , 'none' , '#ffa500' , '#151515')
call NERDTreeHighlightFile('vue'    , 'Red'     , 'none' , '#ffa500' , '#151515')
call NERDTreeHighlightFile('rb'     , 'Magenta' , 'none' , '#ff00ff' , '#151515')
let NERDTreeWinSize=32         " 设置 NERDTree 子窗口宽度
let NERDTreeChDirMode=2        " 是否改变 CWD { 0: 不改变, 1: change when NERD tree is first loaded, 2: always change }
let NERDTreeMinimalUI=1        " 不显示帮助信息
let NERDTreeShowHidden=1       " 显示隐藏文件
let NERDTreeShowBookmarks=0    " 不显示书签
let NERDTreeAutoDeleteBuffer=1 " 删除文件时自动删除文件对应的buffer
let NERDTreeWinPos='left'      " 子窗口位置
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '.keep', '.DS_Store', '\.git$', '.routes']
