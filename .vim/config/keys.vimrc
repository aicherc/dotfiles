"---------------------------
" Useful Mappings:

" Map Y to yank until EOL rather than yy
" map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until next search
nnoremap <C-L> :nohl<CR><C-L>

" Toggle Spell Check with <C-T>
nnoremap <C-T> :setlocal spell! spelllang=en_us<CR>

" Swap with previous buffer
nnoremap ` <C-^>


" Map for ESC
" imap ;; <Esc>

" Map for window traversal
" execute "set <M-h>=\eh"
" nnoremap <M-h> <C-w>h
" execute "set <M-j>=\ej"
" nnoremap <M-j> <C-w>j
" execute "set <M-k>=\ek"
" nnoremap <M-k> <C-w>k
" execute "set <M-l>=\el"
" nnoremap <M-l> <C-w>l

" Jump shortcuts
nnoremap <A-o> <C-o>
nnoremap <A-i> <C-i>


" Sudo Write
" command W w !sudo tee % > /dev/null

"---------------------------
" LaTeX Shortcuts
autocmd FileType tex nmap <F5> :w! \| :lcd %:p:h \| :! pdflatex -synctex=1 -interaction=nonstopmode %:r.tex <CR> <CR>
autocmd FileType tex nmap <F6> :! evince %:r.pdf > /dev/null 2>&1 & <CR><CR>
autocmd FileType tex nmap <F7> :w! \| :lcd %:p:h \| :! bibtex %:r.aux <CR><CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal textwidth=79

" Markdown Shortcut
autocmd FileType markdown nmap <F6> :w! \| :! google-chrome --new-window %:p <CR><CR>
