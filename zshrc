# Customized zshrc
# By Prasun Biswas @ Fishysun
# ______                           ______
# | ___ \                          | ___ (_)                      
# | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
# |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
# | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
# \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/prasun/.oh-my-zsh"

# EXPORTS
export TERM="alacritty"
export HISTCONTROL="ignoredups:erasedups"
export EDITOR="nvim"

# zsh-theme
ZSH_THEME="agnoster"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Oh-my-zsh plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Language preference
export LANG=en_US.UTF-8

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
HISTFILESIZE=2000
setopt autocd extendedglob notify 
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/prasun/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias rb="reboot"
alias pf="poweroff"

# Using exa instead of ls
alias ls='exa  --color="always" --colour-scale --group-directories-first --icons'
alias ll='ls -lh'
alias la='ls -lha'

# Using bat, a modern clone of cat with syntax highlighting
alias bat="bat --theme=\"ansi-dark\""

# For colorizing man pages
function man() {
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
source /usr/share/doc/pkgfile/command-not-found.zsh
