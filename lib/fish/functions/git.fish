function git
    if test -n "$argv"
        if test $argv[1] = gud
            command echo "git out of here!"
        else
            command git $argv
        end
    else
        command git
    end
end
