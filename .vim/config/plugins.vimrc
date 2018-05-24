"" Plugin options

" YouCompleteMe Settings (Plug 'Valloric/YouCompleteMe')
" For conda enviroment compatibility:
let g:ycm_server_python_interpreter= '/home/aicherc/anaconda3/bin/python'
let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_max_diagnostics_to_display = -1
autocmd FileType python nnoremap <F2> :YcmCompleter GoTo <CR>
autocmd FileType python nnoremap K :YcmCompleter GetDoc <CR>
let g:ycm_key_invoke_completion = '<C-Space>'

" Pandoc Preferences
let g:pandoc#modules#disabled=["folding", "chdir"]
let g:pandoc#syntax#conceal#use=0
let g:pandoc#syntax#codeblocks#embeds#langs=["python"]

" SimpylFold (python folding options)
let g:SimpylFold_fold_import=0
let g:SimpylFold_fold_docstring=0

"" NERDTree Preferences
function! ProjectNerdTreeToggle()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
        :NERDTreeClose
    else
        :NERDTree
    endif
endfunction
function! LocalNerdTreeToggle()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
        :NERDTreeClose
    else
        if bufname("%") == ""
            :NERDTree
        else
            :NERDTree %
        endif
    endif
endfunction

let NERDTreeMinimalUI=1 " Hide ? for more info
let NERDTreeIgnore=['\~$', '\.pyc$', '\.o$']
let NERDTreeQuitOnOpen=1
nnoremap <silent> <C-u> :call ProjectNerdTreeToggle()<CR>
execute "set <M-u>=\eu"
inoremap <M-u> <Esc>u
nnoremap <silent> <M-u> :call ProjectNerdTreeToggle()<CR>
nnoremap <silent> - :call LocalNerdTreeToggle()<CR>


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
if exists('$TMUX')
    let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": "2"}
    let g:slime_dont_ask_default = 1
endif
let g:slime_no_mappings = 1
autocmd FileType python xmap <silent> <leader>s <Plug>SlimeRegionSend
autocmd FileType python nmap <silent> <leader>s <Plug>SlimeMotionSend
autocmd FileType python nmap <silent> <leader>ss <Plug>SlimeLineSend
autocmd FileType python xmap <silent> <c-c><c-c> :SlimeSend<CR>
autocmd FileType python nmap <silent> <c-c><c-c> :SlimeSendCurrentLine<CR> +
autocmd FileType python nmap <silent> <c-c>v     :SlimeConfig
"autocmd FileType python nmap <silent> <c-c><c-h> l?#%\\|\%^<CR>0v/#%\\|\%$<CR><CR><c-c><c-c>/#%\\|\%$<CR>:noh<CR>

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

"" ctrlp
"" ctrlp should use silver-surfer
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif
"
"" ctrlp ignores spaces
"let g:ctrlp_abbrev = {
"  \ 'gmode': 'i',
"  \ 'abbrevs': [
"    \ {
"      \ 'pattern': ' ',
"      \ 'expanded': '',
"      \ 'mode': 'pfrz',
"    \ },
"    \ ]
"  \ }
"
"" Map Alt-m to search buffers
"nnoremap <silent> <C-b> :CtrlPBuffer<cr>

" " ack.vim
" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

" FZF
" FZF project files on C-p
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'FZF' s:find_git_root()
nnoremap <silent> <C-p> :ProjectFiles<CR>
" FZF buffers on C-b
nnoremap <silent> <C-b> :Buffers<CR>
" FZF history of open files on C-h
nnoremap <silent> <C-h> :History<CR>

" Customize FZF colors to match color scheme
let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
let g:fzf_layout = { 'down': '~20%' }
"let g:fzf_layout = {'window': '10split enew'}

" FZF File Content
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)


""" VimWiki
"set lazyredraw
"" Diasble commands by mapping to <F99>
"nmap <F38> <Plug>VimwikiRemoveHeaderLevel

"" Denite
" Change default prompt
call denite#custom#option('default', 'prompt', '>')
" Change default mappings
call denite#custom#map('insert','<C-j>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<C-k>','<denite:move_to_previous_line>','noremap')
call denite#custom#map('insert','<C-v>','<denite:do_action:vsplit>','noremap')
call denite#custom#map('insert','<C-t>','<denite:do_action:tabopen>','noremap')

" Search Project Files
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command DeniteProjectFiles execute ":Denite -path=" .s:find_git_root()
            \ "-winheight=10" "file_rec"
nnoremap <silent> <C-p> :DeniteProjectFiles<CR>

" Search buffers
nnoremap <silent> <C-b> :Denite -winheight=10 buffer<CR>



