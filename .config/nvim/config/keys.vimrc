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

" NERDTree Shortcut
nnoremap <C-u> :NERDTreeToggle<CR>
nnoremap <A-u> :NERDTreeToggle<CR>
" nnoremap <C-U> :NERDTreeCWD<CR>

" Map for ESC
" imap ;; <Esc>

" Sudo Write
" command W w !sudo tee % > /dev/null

" Terminal Mappings
tnoremap <ESC> <ESC>
tnoremap <C-\> <C-\><C-n>
tnoremap <A-\> <C-\><C-n>

" Window Mappings
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" Jump shortcuts
nnoremap <A-o> <C-o>
nnoremap <A-i> <C-i>

"---------------------------
" LaTeX Shortcuts
autocmd FileType tex nmap <F5> :w! \| :T cd %:p:h \| :T pdflatex -synctex=1 -interaction=nonstopmode %:r.tex <CR> <CR>
autocmd FileType tex nmap <F6> :! evince %:r.pdf > /dev/null 2>&1 & <CR><CR>
autocmd FileType tex nmap <F7> :w! \| :T cd %:p:h \| :T bibtex %:r.aux <CR><CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal textwidth=79

" Markdown Shortcuts
autocmd FileType markdown nmap <F6> :w! \| :! google-chrome --new-window %:p <CR><CR>


