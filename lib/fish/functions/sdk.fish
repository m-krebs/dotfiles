# Wrapper function for SDKMAN!

# Copyright (c) 2018-2023 Raphael Reitzig
# MIT License (MIT)
# https://github.com/reitzig/sdkman-for-fish

function sdk -d "Manage SDKs"
    # Guard: SDKMAN! needs to be installed
    if not test -f "$__fish_sdkman_init"
        # Propose to install SDKMAN!

        function read_confirm
            while true
                read -l -P "$argv[1] [y/N] " confirm

                switch $confirm
                case Y y
                    return 0
                case '' N n
                    return 1
                end
            end
        end

        if read_confirm "You don't seem to have SDKMAN! installed. Install now?"
            if not which curl > /dev/null
                echo "curl required"
                return 1
            end
            if not which bash > /dev/null
                echo "bash required"
                return 1
            end

            curl -s "https://get.sdkman.io" | bash | sed '/All done!/q'
            echo "Please open a new terminal/shell to load SDKMAN!"
        end
    else
        if test -n "$argv"
            if test $argv[1] = installed
                # Declare the _actual_ sdk command for fish
                __fish_sdkman_run_in_bash "source \"$__fish_sdkman_noexport_init\" && sdk list $argv[2] | grep installed"
                return 0
            end
        end
        # Declare the _actual_ sdk command for fish
        __fish_sdkman_run_in_bash "source \"$__fish_sdkman_noexport_init\" && sdk $argv"
    end
end
