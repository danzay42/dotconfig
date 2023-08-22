if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="exa -lha --git --links"
    alias v=nvim
    alias man="batman"
    starship init fish | source
end
