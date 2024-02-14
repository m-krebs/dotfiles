function git
    if test $argv[1] = gud
        command echo "git out of here!"
    else
        command git $argv
    end

end
