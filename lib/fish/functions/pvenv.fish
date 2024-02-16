function pvenv --wraps='python -m venv .venv' --description 'alias pvenv python -m venv .venv'
  python -m venv .venv $argv
        
end
