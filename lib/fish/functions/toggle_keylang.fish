function toggle_keylang
        if test (setxkbmap -query | grep layout | awk '{print $2}') = 'gb'
            setxkbmap de
        else
            setxkbmap gb
        end
end
