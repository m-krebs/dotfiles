function nvim
        while true
                /usr/sbin/nvim $argv
                if test $status -ne 1
                        break
                end
        end
end
