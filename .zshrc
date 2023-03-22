# Lines configured by zsh-newuser-install
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=10000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Custom configs
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export EDITOR='nvim'

eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias upgrade='sudo pacman -Syu ; echo Done - Press enter to AUR update or C-c to exit ; read _ ; yay -Syu ; echo Done - Press enter to exit; read _' 
alias py=python3
# alias ls=exa
alias cat=bat
alias l='exa -lah'
# alias ll='exa -lh'
alias gst='git status'
alias df='df -h'
alias du='du -sh'
alias tree='tree -C --dirsfirst'
alias v=$EDITOR

alias config_zshrc='$EDITOR $HOME/.zshrc'
alias config_neovim='$EDITOR $HOME/.config/nvim/init.vim'
alias config_readme='$EDITOR $HOME/Documents/dotconfig/README.md'
