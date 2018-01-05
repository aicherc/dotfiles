## Bash Aliases go here 

# Command for managing dotfiles with git
alias gitdot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Command for ssh to desktop
alias sshspc178='ssh -A -t aicherc@ssh.stat.washington.edu ssh aicherc@spc178.stat.washington.edu'
alias sshspc178X11='ssh -X aicherc@spc178.stat.washington.edu'
alias sshspc178Port9999='ssh -N -f -L 127.0.0.1:9999:127.0.0.1:9999 aicherc@spc178.stat.washington.edu'

# Command for ssh to cluster
alias sshcluster='ssh -A -t aicherc@ssh.stat.washington.edu ssh aicherc@cluster.stat.washington.edu'


