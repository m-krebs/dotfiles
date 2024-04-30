function pvenv --wraps='python -m venv .venv' --description 'Create .venv python environment'
  python -m venv .venv $argv
end
