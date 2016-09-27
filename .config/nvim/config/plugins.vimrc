" My neovim plugin settings

" YouCompleteMe Settings (Plug 'Valloric/YouCompleteMe')
" For conda enviroment compatibility:
let g:ycm_server_python_interpreter= '/home/aicherc/anaconda2/bin/python'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = -1
nnoremap <F2> :YcmCompleter GoTo <CR>
nnoremap ? :YcmCompleter GetDoc <CR>


" Pandoc Settings (Plug vim-pandoc/vim-pandoc + vim-pandoc-syntax)
let g:pandoc#modules#disabled=["folding"]
let g:pandoc#syntax#conceal#use=0
let g:pandoc#syntax#codeblocks#embeds#langs=["python"]

" NERDTree Settings (Plug 'scrooloose/nerdtree')
" let NERDTreeQuitOnOpen=1

" NeoTerm Settings (Plug 'kassio/neoterm')
autocmd FileType python nnoremap <F10> :TREPLSendFile<CR>
autocmd FileType python nnoremap <F9> :TREPLSend<CR>j
autocmd FileType python vnoremap <F9> :TREPLSend<CR>
nnoremap <A-n> :Ttoggle<CR>
tnoremap <A-n> <C-\><C-n>:Ttoggle<CR>


