"" Plugin options

" YouCompleteMe Settings (Plug 'Valloric/YouCompleteMe')
" For conda enviroment compatibility:
let g:ycm_server_python_interpreter= '/home/aicherc/anaconda2/bin/python'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = -1
autocmd FileType python nnoremap <F2> :YcmCompleter GoTo <CR>
autocmd FileType python nnoremap ? :YcmCompleter GetDoc <CR>
let g:ycm_key_invoke_completion = '<C-Space>'

" Pandoc Preferences
let g:pandoc#modules#disabled=["folding"]
let g:pandoc#syntax#conceal#use=0
let g:pandoc#syntax#codeblocks#embeds#langs=["python"]


"" NERDTree Preferences
" let NERDTreeQuitOnOpen=1
nnoremap <C-u> :NERDTreeToggle<CR>
execute "set <M-u>=\eu"
inoremap <M-u> <Esc>u
nnoremap <M-u> :NERDTreeToggle<CR>

" slimux settings
" nnoremap <leader>s :SlimuxREPLSendLine<CR>
" nnoremap <C-c><C-c> : SlimuxREPLSendLine<CR>
" vnoremap <leader>s :SlimuxREPLSendSelection<CR>
" vnoremap <C-c><C-c> : SlimuxREPLSendSelection<CR>
" nnoremap <leader>a :SlimuxShellLast<CR>
" let g:slime_python_ipython = 1

" vim-slime settings
let g:slime_python_ipython = 1
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "2" }
let g:slime_dont_ask_default = 1
let g:slime_no_mappings = 1
autocmd FileType python xmap <c-c><c-c> :SlimeSend<CR>
autocmd FileType python nmap <c-c><c-c> :SlimeSendCurrentLine<CR> +
autocmd FileType python nmap <c-c>v     :SlimeConfig

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
execute "set <M-h>=\eh"
inoremap <silent> <M-h> <Esc>h
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
execute "set <M-j>=\ej"
inoremap <silent> <M-j> <Esc>j
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
execute "set <M-k>=\ek"
inoremap <silent> <M-k> <Esc>k
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
execute "set <M-l>=\el"
inoremap <silent> <M-l> <Esc>l
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

" vim-fugitive
nnoremap <leader>gs :Gstatus<CR><C-w>20+

" vim-syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pyflakes']
nnoremap <F3> :SyntasticToggleMode<CR> :w<CR>
let g:syntastic_mode_map = { 
            \ "mode": "passive",
            \ "active_filetypes": [],
            \ "passive_filetypes": [] }

"" vim-ctrlspace
"if executable("ag")
"    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
"endif
"
"execute "set <M-n>=\en"
"inoremap <silent> <M-n> <Esc><n>
"nnoremap <silent> <M-n> :CtrlSpace<cr>
"let g:CtrlSpaceSetDefaultMapping = 0
"let g:CtrlSpaceLoadLastWorkspaceOnStart = 0
"let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
"let g:CtrlSpaceSaveWorkspaceOnExit = 1

" ctrlp
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Map Alt-n to search
execute "set <M-n>=\en"
inoremap <silent> <M-n> <Esc><n>
nnoremap <silent> <M-n> :CtrlP<cr>

execute "set <M-m>=\em"
inoremap <silent> <M-m> <Esc><m>
nnoremap <silent> <M-m> :CtrlPBuffer<cr>



