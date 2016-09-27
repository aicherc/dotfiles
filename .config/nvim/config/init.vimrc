" My neovim plugins

" Vim-Plug Plugins
call plug#begin()

" vim-colors-solarized
Plug 'altercation/vim-colors-solarized'

" nerdtree
Plug 'scrooloose/nerdtree'

" vim-pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Neoterm
Plug 'kassio/neoterm'

call plug#end()

let g:plug_timeout=600

" Define Python
let g:python_host_prog = '/home/aicherc/anaconda2/bin/python'


