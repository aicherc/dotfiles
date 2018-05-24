"---------------------------
" Useful Mappings:

" Map Y to yank until EOL rather than yy
" map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until next search
nnoremap <C-L> :nohl<CR><C-L>

" Toggle Spell Check with <C-T>
nnoremap <C-T> :setlocal spell! spelllang=en_us<CR>

" Insert a single character
nnoremap <leader>i i_<Esc>r
nnoremap <leader>a a_<Esc>r

" Long wrapped line movement
nnoremap k gk
nnoremap j gj

" Map for window traversal
" nnoremap <M-h> <C-w>h
" nnoremap <M-j> <C-w>j
" nnoremap <M-k> <C-w>k
" nnoremap <M-l> <C-w>l

" Avoid Ctrl-C
inoremap <C-c> <Nop>

" Map to open fold
nnoremap <Space><Space> <C-^>

" Map [[ and ]] to jump half page up or down
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" Jump shortcuts
nnoremap <A-o> <C-o>
nnoremap <A-i> <C-i>


" Sudo Write
" command W w !sudo tee % > /dev/null

"---------------------------
" LaTeX Shortcuts
autocmd FileType tex nnoremap <buffer> <silent> <F5> :w! \| :lcd %:p:h \| :! pdflatex -synctex=1 -interaction=nonstopmode %:r.tex <CR> \| :lcd - <CR>
autocmd FileType tex nnoremap <buffer> <silent> <F6> :! evince %:r.pdf > /dev/null 2>&1 & <CR><CR>
autocmd FileType tex nnoremap <buffer> <silent> <F7> :w! \| :lcd %:p:h \| :! bibtex %:r.aux <CR> \| :lcd - <CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal textwidth=79

" Markdown Shortcut
autocmd FileType markdown nnoremap <buffer> <silent> <F6> :w! \| :! google-chrome --new-window %:p <CR> \| :lcd - <CR>

