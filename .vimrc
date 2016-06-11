" My vimrc settings

" Ward off unexpected things
set nocompatible
" Set PATH to default

" Plugin Manager
filetype off

"---------------------------
" PATHOGEN Setup
execute pathogen#infect()
execute pathogen#helptags()

"" YCM
"" let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
"nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = 0
nnoremap <leader>goto :YcmCompleter GoTo <CR>
nnoremap ? :YcmCompleter GetDoc <CR>

" Pandoc Preferences
let g:pandoc#modules#disabled=["folding"]
let g:pandoc#syntax#conceal#use=0
let g:pandoc#syntax#codeblocks#embeds#langs=["python"]

"" Syntastic Preferences
"let g:syntastic_python_checkers=['python', 'flake8']
"let g:syntastic_python_flake8_args='--ignore=E128,E126,E501'
"let g:syntastic_always_populate_loc_list=0
"let g:syntastic_auto_loc_list=1

"" Run SyntasticCheck
"nnoremap <leader>syn :SyntasticCheck<CR>
""Toggle Syntastic
"nnoremap <leader>syntog :SyntasticToggleMode<CR>

"" NERDTree Preferences
let NERDTreeQuitOnOpen=1

" ULTISNIPS
" Trigger configuration.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Vim-IPython
" source ~/.vim/bundle/vim-ipython/ftplugin/python/ipy.vim

" Enable Syntax highlighting
syntax on


"---------------------------
" Essential Options:

" Multiple windows
set hidden

" Command-line completion
set wildmenu

" Show partial commands in last line of screen
set showcmd

" Highligh searches (use <C-L> to turn off highlighting
set hlsearch

" Set Clipboard to allow copy/paste in linux
set clipboard=unnamedplus


" Modelines are a source of security vulnerabilities
" Can set modelines off with
" set nomodeline

"---------------------------
" Usability Options:

" Set Colorscheme
if !has("gui_running")
    let g:solarized_termcolors=16
    let g:solarized_termtrans=1
endif

colorscheme solarized
set background=dark

" Change cursor shape between insert and normal mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" for gnome-terminal
" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=0 ctermbg=12
  au InsertLeave * hi StatusLine ctermfg=12 ctermbg=0
endif

highlight Cursor ctermbg=12

"autocmd InsertEnter,InsertLeave * set cursorline!

" Case insensitive search except when capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start
set backspace=indent,eol,start

" No filetype-specific indenting -> use previous files indenting
set autoindent

" Stop returning to first character of line
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line
set laststatus=2

" Raise a dialogue to check if I wish to save changes to a file
set confirm

" Visual bell instead of beeping for errors
set visualbell

" And reset the terminal code for visual bell.
set t_vb=
" Enable use of mouse
" set mouse=a

"Set command window height to 2 lines to avoid
set cmdheight=2

" Display line numbers on left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F10>

" Cursor wrap at beginning and end of line
set whichwrap+=<,>,h,l,[,]

" Column Color
set colorcolumn=81,161,241

" Highligh Trailing Whitespace
:highlight ExtraWhitespace ctermbg=Brown guibg=Brown
:match ExtraWhitespace /\s\+\%#\@<!$/

" Code Completion
" set completeopt+=preview

"---------------------------
" Indent Options

" 4 spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab


" For cpp/hpp Files
autocmd FileType cpp,cxx,hpp,c,h setlocal shiftwidth=2 softtabstop=2 tabstop=2
" autocmd FileType hpp setlocal shiftwidth=2 softtabstop=2 tabstop=2

" For Cython Files
au BufNewFile,BufRead *.pyx set filetype=python

" Plugin for indents
filetype plugin indent on

" Strip trailing whitespace in code
fun! <SID>StripTrailingWhitespaces()
    let l=line(".")
    let c=col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,hpp,cxx,h,python,java,php
   \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

"---------------------------
" Useful Mappings:

" Map Y to yank until EOL rather than yy
" map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until next search
nnoremap <C-L> :nohl<CR><C-L>

" Toggle Spell Check with <C-T>
nnoremap <C-T> :setlocal spell! spelllang=en_us<CR>

" Kill Buffer (without closing window)
nmap <C-c> :bp\|bd#<CR>

" Swap with previous buffer
nnoremap ` <C-^>

" NERDTree Shortcut
nnoremap <C-u> :NERDTree<CR>

" Map for ESC
" imap ;; <Esc>

" Map for window traversal
" nmap <ALT-k> :wincmd k<CR>
" nmap <ALT-j> :wincmd j<CR>
" nmap <ALT-h> :wincmd h<CR>
" nmap <ALT-l> :wincmd l<CR>

" Sudo Write
" command W w !sudo tee % > /dev/null

"---------------------------
" LaTeX Shortcuts
autocmd FileType tex nmap <F5> :w! \| :lcd %:p:h \| :! pdflatex -synctex=1 -interaction=nonstopmode %:r.tex <CR> <CR>
autocmd FileType tex nmap <F6> :! evince %:r.pdf > /dev/null 2>&1 & <CR><CR>
autocmd FileType tex nmap <F7> :w! \| :lcd %:p:h \| :! bibtex %:r.aux <CR><CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal textwidth=79



