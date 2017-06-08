" Ward off unexpected things
set nocompatible
filetype off

"---------------------------
" Vim-Plug management
call plug#begin('~/.vim/plugged')

" vim-colors-solarized
Plug 'altercation/vim-colors-solarized'

" nerdtree
Plug 'scrooloose/nerdtree'

" vim-pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" vim-slime
Plug 'aicherc/vim-slime'

" vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" vim-obsession
Plug 'tpope/vim-obsession'

" vim-syntastic
Plug 'vim-syntastic/syntastic'

" fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vimwiki
Plug 'vimwiki/vimwiki'


" End of Pluggins
call plug#end()

let g:plug_timeout=600

" Plugin for indents
filetype plugin indent on

" Define Python
let g:python_host_prog = '~/anaconda2/bin/python'

" Brief help
" :PlugStatus       - lists configured plugins
" :PlugInstall      - Install plugins
" :PlugClean        - Remove unused
"---------------------------
