function nvim
    while true
        set binary_path (type -P nvim)
        eval $binary_path $argv
        if test $status -ne 1
            break
        end
    end
end
