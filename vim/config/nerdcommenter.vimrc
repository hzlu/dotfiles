" 用法：[注释行数]<Leader> cc: comment out the current line
" c<space>: toggle comment
" 多行注释 cm: minimal comment, cs: sexy comment, cy: comment and yank
" c$: EOL comment
" cA: append comment
" cu: uncomment
let g:NERDSpaceDelims = 1                                              " 在注释符默认添加空格
let g:NERDCompactSexyComs = 1                                          " 使用紧凑语法美化多行注释
let g:NERDDefaultAlign = 'left'                                        " 将行注释符左对齐而不是下面的代码缩进
let g:NERDAltDelims_java = 1                                           " 设置语言默认使用备用定界符
let g:NERDCommentEmptyLines = 1                                        " 允许注释和转换空行（注释区域时有用）
let g:NERDTrimTrailingWhitespace = 1                                   " 启用时修整尾随空格注释
let g:NERDCustomDelimiters = { 'js': { 'left': '/**','right': '*/' } } " 添加自定义格式或覆盖默认值。
