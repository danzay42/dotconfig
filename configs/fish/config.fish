function my_prompt --description 'My custom prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status red

  # Color the prompt differently when we're root
  set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

  # Write pipestatus
  # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
  set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

  echo -n -s (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal " "$prompt_status $suffix " "
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
    set -x JAVA_HOME "/usr/lib/jvm/default"

    #
    alias ll="exa -lha --git --links --color=always --group-directories-first"
    alias v=$EDITOR
    alias a=batpipe
    
    # Prompt
    alias fish_prompt=my_prompt
    # starship init fish | source
end
