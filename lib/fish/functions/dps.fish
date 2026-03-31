function dps --wraps='docker ps -a' --description 'alias dps docker ps -a'
  docker ps -a $argv
        
end
