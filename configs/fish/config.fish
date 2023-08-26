function fish_prompt -d "My custom prompt"
    printf '%s%s%s > ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    # starship init fish | source
end

function fish_greeting -d "My custom greeting"
    echo "[$(set_color yellow)$(date +%T)$(set_color normal)]" $USER@$hostname
end

if status is-interactive
    # PATH
    fish_add_path -U $HOME/.bin $HOME/.local/bin $fish_user_paths


    # EXPORT
    set -U TERM "xterm-256color" # Sets the terminal type
    set -U EDITOR "nvim" # $EDITOR use Emacs in terminal


    # Man configure
    if command -v "batman" &> /dev/null
        alias man=batman
    else if command -v "nvim" &> /dev/null
        set -x MANPAGER "nvim +Man!"
    end


    # Development
    set -x GOPATH $HOME/.go
    fish_add_path -U $GOPATH/bin


    alias ls="exa -lha --git --links --color=always --group-directories-first"
    alias v=$EDITOR
end
