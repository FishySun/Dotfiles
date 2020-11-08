
# Customized bashrc
# By Prasun Biswas @ Fishysun
# ______                           ______
# | ___ \                          | ___ (_)                      
# | |_/ / __ __ _ ___ _   _ _ __   | |_/ /_ _____      ____ _ ___ 
# |  __/ '__/ _` / __| | | | '_ \  | ___ \ / __\ \ /\ / / _` / __|
# | |  | | | (_| \__ \ |_| | | | | | |_/ / \__ \\ V  V / (_| \__ \
# \_|  |_|  \__,_|___/\__,_|_| |_| \____/|_|___/ \_/\_/ \__,_|___/

# Custom bash prompt with colors
export PS1="\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;3m\]\u\[$(tput sgr0)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[\033[38;5;3m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;6m\]\W\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PS2="-->"

# To force color prompt
force_color_prompt=yes

# Alias declarations
alias grep="grep -i"
alias ls="ls -a --color=always"
alias update="sudo pacman -Syyu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"
alias clean="sudo pacman -Sc"
alias vi="nvim"
alias ge="geany"
alias pf="poweroff"
alias rb="reboot"
