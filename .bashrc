#
# ~/.bashrc
#
# Enable bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Ativa integração com fzf no Bash
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\033[1;34m\]矢 \[\033[0m\]\w > '
fastfetch --kitty-direct /home/xyz/.config/fastfetch/logo/vivian.png
#fastfetch