## Christopher Aicher DotFiles

This repo consists of the dotfiles I use for Linux.

Because I didn't want to turn my home directory into a Git repository, I'm using a `bare` Git repository and tracking files using an alias to set the working directory
```
alias gitdot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```

For more details on managing dotfiles this way see
[link](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)


## Installation on a New System

Download and run the following script [link](https://gist.github.com/aicherc/8fd82fd29549135194bed3aa7d2d6484#file-dotfiles_install-sh).
Don't forget to add permission to the file with `chmod +x`

### Other Things to Install First
* Git
* Anaconda [link](https://www.continuum.io/downloads)
* Chrome
* Dropbox
* R + RStudio
* LaTeX (`texlive-full` and `texmaker`) [link](https://help.ubuntu.com/community/LaTeX)
* Pandoc [link](http://pandoc.org/installing.html)
* solarized colorscheme for terminal [link](https://github.com/Anthony25/gnome-terminal-colors-solarized)
* neovim [link](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* Install neovim python modules to Anaconda [link](https://neovim.io/doc/user/provider.html#provider-python)

## Anaconda

The following packages are recommended:
```
conda install numpy scipy pandas scikit-learn ipython matplotlib seaborn
```

Also consider removing `mkl` [link](https://www.continuum.io/blog/developer-blog/anaconda-25-release-now-mkl-optimizations)

For cluster/terminals without write access, consider using miniconda instead.


## VIM + NEOVIM Plug-in Notes
Use Vundle [link](https://github.com/VundleVim/Vundle.vim) for vim.
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```
Note that vim must be built with python for YouCompleteMe to work.
YouCompleteMe also has additional installation steps (see below).

Use vim-plug for NeoVim [link](https://github.com/junegunn/vim-plug/blob/master/plug.vim).
Open up `nvim` and call `:PlugInstall`.
YouCompleteMe also has additional installation steps (see below). (This maybe outdated, I'm switching to jedi).

To copy over ssh use `xclip` [link](https://defuse.ca/blog/clipboard-over-ssh-with-vim.html).

### YouCompleteMe
YCM is a code completion engine for Vim and NeoVim.
It has a compiled component that requires a few steps to install (including installing cmake).
See [link](https://github.com/Valloric/YouCompleteMe) for more details.

I've found that installing this can be difficult (as some dependencies may not auto install).
For example installing `libgcc` with `conda`.


### Markdown Viewing
Use your favorite browser to view markdown files with F6


