
"---------------------------
" Essential Options:

" Enable Syntax highlighting
syntax on

" Multiple windows
set hidden

" Command-line completion
set wildmenu
set wildmode=longest:full,full

" Show partial commands in last line of screen
set showcmd

" Highligh searches (use <C-L> to turn off highlighting
set hlsearch

" Set Clipboard to allow copy/paste in linux
set clipboard=unnamedplus

"-------------------------
" Usability Options:

" Set Colorscheme
if !has("gui_running")
    let g:solarized_termcolors=16
    let g:solarized_termtrans=1
endif

colorscheme solarized
set background=dark

" for gnome-terminal
" now set it up to change the status line based on mode
au InsertEnter * hi StatusLine ctermfg=0 ctermbg=12
au InsertLeave * hi StatusLine ctermfg=12 ctermbg=0

highlight Cursor ctermbg=12

" Case insensitive search except when capital letters
set ignorecase
set smartcase

" No filetype-specific indenting -> use previous files indenting
set autoindent

" Stop returning to first character of line
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line
set laststatus=2
set statusline=%<%f         " Path to file
set statusline+=\ %m        " Indicate if file has changed
set statusline+=%=          " Append to right Side
set statusline+=%l,%c       " Row # and Col #

" Raise a dialogue to check if I wish to save changes to a file
set confirm

" Visual bell instead of beeping for errors
set visualbell

" And reset the terminal code for visual bell.
set t_vb=
" Disable use of mouse
set mouse=

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

" Wildignore (filetypes to ignore)
set wildignore+=*.pyc,*.sw?,*.so,*.o,*.exe,*.dll,*.pyo

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

" For tex no smartindent
autocmd FileType tex setlocal formatoptions= nosmartindent indentexpr=

" For Cython Files
autocmd BufNewFile,BufRead *.pyx set filetype=python

"---------------------------
autocmd FileType python set nofoldenable

" Strip trailing whitespace in code
fun! <SID>StripTrailingWhitespaces()
    let l=line(".")
    let c=col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,hpp,cxx,h,python,java,php
   \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" .md files are markdown
au BufNewFile,BufRead *.md set filetype=markdown

" Tex is LaTeX
let g:tex_flavor='latex'
