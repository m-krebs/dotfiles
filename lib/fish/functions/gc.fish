function gc --wraps='git commit' --description 'alias git commit'
  git commit $argv
end
