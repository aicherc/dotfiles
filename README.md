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
* Anaconda
* Chrome
* Dropbox
* R + RStudio
* solarized colorscheme for terminal [link](https://github.com/Anthony25/gnome-terminal-colors-solarized)


## VIM Plug-in Notes
Use Vundle [link](https://github.com/VundleVim/Vundle.vim)

### YouCompleteMe
YCM is a code completion engine for Vim.
It has a compiled component that requires a few steps to install (including installing cmake + python-dev tools).
See [link](https://github.com/Valloric/YouCompleteMe) for more detials.





