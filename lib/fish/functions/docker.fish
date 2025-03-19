function docker
    if test -n "$argv"
        if test $argv[1] = tempbuild
            command docker run --rm -it $(docker build -q .)
        else
            command docker $argv
        end
    else
        command docker
    end
end
