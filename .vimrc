" My vimrc settings

source $HOME/.vim/config/init.vimrc
source $HOME/.vim/config/plugins.vimrc
source $HOME/.vim/config/general.vimrc
source $HOME/.vim/config/keys.vimrc

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



