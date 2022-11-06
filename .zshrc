# Lines configured by zsh-newuser-install
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=10000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Custom configs
export PATH=$HOME/.local/bin:$PATH

eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias upgrade='sudo pacman -Syu ; echo Done - Press enter to AUR update or C-c to exit ; read _ ; yay -Syu ; echo Done - Press enter to exit; read _' 
alias py=python3
alias ls=exa
alias cat=bat
alias l='ls -lah'
alias ll='ls -lh'
alias gst='git status'
alias vi=nvim
