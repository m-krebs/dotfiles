status is-interactive
or exit

starship init fish | source

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

# unset the globally inherited EDITOR
set -eg EDITOR # because nvim is superior

# init pnpm
set -gx PNPM_HOME "/home/mkrebs/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

# thefuck
if ! command -v thefuck &>/dev/null
    echo "[i] thefuck is not installed. Skipped!"
else
    # generated by thefuck --alias, hardcoded because it takes too long
    function fuck -d "Correct your previous console command"
      set -l fucked_up_command $history[1]
      env TF_SHELL=fish TF_ALIAS=fuck PYTHONIOENCODING=utf-8 thefuck $fucked_up_command THEFUCK_ARGUMENT_PLACEHOLDER $argv | read -l unfucked_command
      if [ "$unfucked_command" != "" ]
        eval $unfucked_command
        builtin history delete --exact --case-sensitive -- $fucked_up_command
        builtin history merge
      end
    end
    set -x THEFUCK_OVERRIDDEN_ALIASES 'git'
end

# init zoxide (better cd navigation)
zoxide init fish --cmd cd | source

# init nvm
nvm use lts > /dev/null
