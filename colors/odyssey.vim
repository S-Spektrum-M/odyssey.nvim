set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "odyssey"

" Load the Lua colorscheme
lua require('odyssey').setup()
