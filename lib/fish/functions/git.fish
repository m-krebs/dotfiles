function git
    if test -n "$argv"
        if test $argv[1] = gud
            command echo "git out of here!"
        else if test $argv[1] = safe
            command git config --global --add safe.directory $(realpath .)
        else
            command git $argv
        end
    else
        command git
    end
end
