" My neovim plugins

" Ward off unexpected things
set nocompatible
filetype off


"---------------------------
" Vim-Plug management
call plug#begin('~/.local/share/nvim/plugged')

" vim-colors-solarized
Plug 'altercation/vim-colors-solarized'

" nerdtree
Plug 'scrooloose/nerdtree'

" vim-vinegar
" Plug 'tpope/vim-vinegar'

" vim-pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Language Server
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

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

" Denite
Plug 'Shougo/denite.nvim'

"" Neoterm
Plug 'kassio/neoterm'

" deoplete.nvim 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" jedi-vim
Plug 'davidhalter/jedi-vim',

" deoplete-jedi
Plug 'zchee/deoplete-jedi'

" python folding
Plug 'tmhedberg/SimpylFold'

" nvim-ipy
" Plug 'bfredl/nvim-ipy'


call plug#end()

let g:plug_timeout=600

" Define Python
let g:python_host_prog = 'python' " '/home/aicherc/anaconda2/bin/python'
let g:python3_host_prog = '/home/aicherc/anaconda3/bin/python'


