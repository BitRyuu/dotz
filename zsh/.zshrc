# A message from Morpheus
clear
echo "Wake up, Neo..." | lolcat -a

# User Defined Aliases
alias cls='clear'
alias la='ls -a'
alias refresh='clear && source ~/.zshrc'
alias ls='ls --color'
alias quit='exit'
alias sl='sl | lolcat'
alias nf='neofetch'
alias ff='fastfetch'
alias imgcat='wezterm imgcat'
alias lsa='eza'
alias pthls='echo $PATH | tr ":" "\n"'
alias incdir='cd /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include'

# color config for less
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;4;31m'
export MANROFFOPT="-c"

# Custom Prompt init
eval "$(starship init zsh)"

# Added by n-install (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

eval "$(zoxide init zsh)"

# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# zsh plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/zeit/zeit.plugin.zsh
source ~/.config/zsh/plugins/bk/bk.plugin.zsh

# jdk setup
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)

[ -f "/Users/sagar/.ghcup/env" ] && . "/Users/sagar/.ghcup/env" # ghcup-env
