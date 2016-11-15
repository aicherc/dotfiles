"" Plugin options

" YouCompleteMe Settings (Plug 'Valloric/YouCompleteMe')
" For conda enviroment compatibility:
let g:ycm_server_python_interpreter= '/home/aicherc/anaconda2/bin/python'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = -1
nnoremap <F2> :YcmCompleter GoTo <CR>
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
" let NERDTreeQuitOnOpen=1

" ULTISNIPS
" Trigger configuration.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Vim-IPython
" source ~/.vim/bundle/vim-ipython/ftplugin/python/ipy.vim

