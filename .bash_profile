source ~/.bash_prompt

export VISUAL=nvim
export EDITOR="$VISUAL"

# Source bashrc for ssh
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

