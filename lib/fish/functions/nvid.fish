function nvid --wraps=neovide --description 'alias nvid neovide'
    nohup neovide . >/dev/null 2>&1 &
    set pid $last_pid

    disown $pid

    exit
end
