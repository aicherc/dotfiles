"---------------------------
" Useful Mappings:

" Map Y to yank until EOL rather than yy
" map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until next search
nnoremap <C-L> :nohl<CR><C-L>

" Toggle Spell Check with <C-T>
nnoremap <C-T> :setlocal spell! spelllang=en_us<CR>
hi SpellBad cterm=underline

" Long wrapped line movement
nnoremap k gk
nnoremap j gj
"vnoremap k gk
"vnoremap j gj

" Avoid Ctrl-C
inoremap <C-c> <Nop>

" Map to open fold
" nnoremap <Space><Space> <C-^>

" Map [[ and ]] to jump half page up or down
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" Map for ESC
" imap ;; <Esc>

" Sudo Write
" command W w !sudo tee % > /dev/null

"" Terminal Mappings
"tnoremap <ESC> <ESC>
"tnoremap <C-\> <C-\><C-n>
"tnoremap <A-\> <C-\><C-n>

"" Window Mappings
"tnoremap <A-h> <C-\><C-n><C-w>h
"tnoremap <A-j> <C-\><C-n><C-w>j
"tnoremap <A-k> <C-\><C-n><C-w>k
"tnoremap <A-l> <C-\><C-n><C-w>l
"nnoremap <A-h> <C-w>h
"nnoremap <A-j> <C-w>j
"nnoremap <A-k> <C-w>k
"nnoremap <A-l> <C-w>l
nnoremap <C-w>t :tab split<CR>


" Jump shortcuts
nnoremap <A-o> <C-o>
nnoremap <A-i> <C-i>

"---------------------------
" LaTeX Shortcuts -> Use vimtex
"autocmd FileType tex nnoremap <buffer> <silent> <F5> :w! \| :lcd %:p:h \| :T pdflatex -synctex=1 -interaction=nonstopmode %:r.tex <CR> \| :lcd - <CR>
"autocmd FileType tex nnoremap <buffer> <silent> <F6> :! evince %:r.pdf > /dev/null 2>&1 & <CR><CR>
"autocmd FileType tex nnoremap <buffer> <silent> <F7> :w! \| :lcd %:p:h \| :T bibtex %:r.aux <CR> \| :lcd - <CR>
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal textwidth=79

" Markdown Shortcuts
autocmd FileType markdown nnoremap <buffer> <silent> <F6> :w! \| :! google-chrome --new-window %:p <CR> \| :lcd - <CR>

" SSH Shortcuts for xclip
" vnoremap "-y :!xclip -f -sel clip <CR>
" vnoremap "-p :r!xclip -o -sel clip <CR>



