# Customized zshrc
# By Prasun Biswas @ Fishysun
# ______                           ______
# | ___ \                          | ___ (_)                      
# | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
# |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
# | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
# \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# EXPORTS
export TERM="xterm-256color"
export HISTCONTROL="ignoredups:erasedups"
export EDITOR="nvim"

# Uncomment the following line to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Language preference
export LANG=en_US.UTF-8

# History settings for ZSH
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

# Misc good settings for ZSH
setopt autocd extendedglob notify COMPLETE_ALIASES appendhistory

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/prasun/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# For autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# For enabling autocompletion of privileged environments in privileged commands
zstyle ':completion::complete:*' gain-privileges 1

# Alias declarations
alias grep="grep -i --color=always"
alias diff="diff --color=always"
alias ip='ip -color=auto'
alias update="sudo pacman -Syyu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias clean="sudo pacman -Sc"
alias mirror="sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist"
alias yayupdate="yay -Syyu"
alias yays="yay -S"
alias yayr="yay -Rs"
alias yaycl="yay -Sc"
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -rfv"
alias vim="nvim"
alias svim="sudo nvim"

# Custom commands for better navigation
alias codef="cd ~/Documents/CP/Codeforces"
alias atco="cd ~/Documents/CP/AtCoder/"
alias hack="cd ~/Documents/CP/Hackerrank/"
alias misc="cd ~/Documents/CP/Misc"
alias euler="cd ~/Documents/CP/ProjectEuler"
alias prac="cd ~/Documents/CP/Practice/"
alias codec="cd ~/Documents/CP/Codechef/"
alias lad="cd ~/Documents/CP/CPLadder/"
alias dev="cd ~/Documents/Dev/"
alias spoj="cd ~/Documents/CP/SPOJ/"

# Using exa instead of ls
alias ls='exa  --color="always" --colour-scale --group-directories-first --icons'
alias ll='ls -lh'
alias la='ls -lha'

# Using bat, a modern clone of cat with syntax highlighting
alias bat="bat --theme=\"ansi\""

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

# For making a dir and changing directory into it
function mcd() {
	mkdir -p "$1" || exit
	cd "$1" || exit
}

# Search the official repo, when entering an unrecognized command 
# N.B: install the pkgfile and then run "pkgfile -u" to get the desired result
source /usr/share/doc/pkgfile/command-not-found.zsh

# For Fish-styled syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# For Smarter auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
