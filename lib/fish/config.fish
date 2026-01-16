status is-interactive
or exit

# TODO: implement config check if prmt should be used
# prmt > starship
if type -q prmt
    function fish_prompt
        prmt --code $status '{path:cyan} {git:purple:s:on :} \n{ok:green:❯}{fail:red} '
    end
else
    if type -q starship
        starship init fish | source
    end
end

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
    fish_vi_key_bindings # has to be called in fish_user_key_bindings to keep bind_bang functionality

    for mode in default insert
        bind -M $mode '!' bind_bang
        bind -M $mode '$' bind_dollar
    end
end

# unset the globally inherited EDITOR
set -eg EDITOR # because nvim is superior

# init pnpm
# set -gx PNPM_HOME "/home/mkrebs/.local/share/pnpm"
# if not string match -q -- $PNPM_HOME $PATH
#     set -gx PATH "$PNPM_HOME" $PATH
# end

set -x THEFUCK_OVERRIDDEN_ALIASES git

# init zoxide (better cd navigation)
if type -q zoxide
    zoxide init fish --cmd cd | source
end

# init nvm
if type -q nvm
    nvm use lts >/dev/null
end
