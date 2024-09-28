if [ "$(setxkbmap -query | grep layout | awk '{print $2}')" == "gb" ]; then
        setxkbmap de
else
        setxkbmap gb
fi
