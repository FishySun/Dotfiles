# Customized bashrc
# By Prasun Biswas @ Fishysun
# ______                           ______
# | ___ \                          | ___ (_)                      
# | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
# |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
# | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
# \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/

# EXPORTS
export TERM="alacritty"
export HISTCONTROL="ignoredups:erasedups"
export EDITOR="nvim"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# For setting history length see HISTSIZE and HISTFILESIZE in bash
HISTSIZE=1000
HISTFILESIZE=2000

# Prompt
PS1='\[\e[0;1;32m\]\u\[\e[0;1;32m\]@\[\e[0;1;32m\]\H\[\e[0m\]:\[\e[0;1;94m\]\W\[\e[0;1m\]$\[\e[m\] \[\e0' 

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Set a fancy prompt (non-color unless we want color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# To force color prompt
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

### SHOPT
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # check the window size after each command 

#ignore casesensitive completion
bind "set completion-ignore-case on"

# Alias declarations
alias grep="grep -i --color=always"
alias diff="diff --color=always"
alias ip='ip -color=auto'
alias update="sudo pacman -Syyu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"
alias clean="sudo pacman -Sc"
alias yayupdate="yay -Syyu"
alias yayremove="yay -R"
alias yayinstall="yay -S"
alias yayclean="yay -Sc"
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"
alias vi="nvim"
alias svi="sudo nvim"

# Using exa instead of ls
alias ls='exa  --color="always" --colour-scale --group-directories-first --icons'
alias ll='ls -lh'
alias la='ls -lha'

# For colorizing man pages
man() {
    LESS_TERMCAP_md=$'\e[01;32m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;4;93;49m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# Search the official repo, when entering an unrecognized command 
# N.B: install the pkgfile and then run "pkgfile -u" to get the desired result
source /usr/share/doc/pkgfile/command-not-found.bash
