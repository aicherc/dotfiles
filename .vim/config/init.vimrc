" Ward off unexpected things
set nocompatible
filetype off

"---------------------------
" VUNDLE Plugin management
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-colors-solarized
Plugin 'altercation/vim-colors-solarized'

" nerdtree
Plugin 'scrooloose/nerdtree'

" vim-vinegar
Plugin 'tpope/vim-vinegar'

" ctrl-p
Plugin 'ctrlpvim/ctrlp.vim'

" vim-pandoc
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" slimux
" Plugin 'epeli/slimux'
" Plugin 'karadaharu/slimux'

" vim-slime
Plugin 'jpalardy/vim-slime'

" vim-tmux-navigator
Plugin 'christoomey/vim-tmux-navigator'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-syntastic
Plugin 'vim-syntastic/syntastic'


call vundle#end()

" Plugin for indents
filetype plugin indent on

" Define Python
let g:python_host_prog = '~/anaconda2/bin/python'


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"---------------------------

