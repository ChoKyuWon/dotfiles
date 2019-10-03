source $HOME/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle sudo
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme agnoster
#antigen theme robbyrussell
antigen apply


export EDITOR=vim
export GPG_TTY=$(tty)

if command -v tmux &> /dev/null && [ -z $TMUX ]; then
    echo "run new tmux!"
    tmux attach -t default || tmux new -s default
fi

#eval "$(starship init zsh)"
export PATH="$HOME/.cargo/bin:$PATH"

