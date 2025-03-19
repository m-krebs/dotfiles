function git
    if test -n "$argv"
        if test $argv[1] = gud
            command echo "git out of here!"
        else if test $argv[1] = safe
            command git config --global --add safe.directory $(realpath .)
        else if test $argv[1] = hashc
            set hash $(date +%s | sha256sum | head -c 4)
            set current $(git branch --show-current)
            command git checkout -b michael.krebs-$current-patch-$hash
        else
            command git $argv
        end
    else
        command git
    end
end
