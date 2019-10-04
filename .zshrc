source $HOME/zsh/antigen.zsh

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

USER=``
export EDITOR=vim
export GPG_TTY=$(tty)

export PATH="$HOME/.cargo/bin:$PATH"
alias kali="docker run -t -i kalilinux/kali-linux-docker /bin/bash"
