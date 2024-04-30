function vpy --wraps=.venv/bin/python --description 'Run Python in .venv'
  if ! test -f .venv/bin/python
    echo "No .venv/bin/python found. Run 'pvenv' to create one."
    return 1
  end
  .venv/bin/python $argv
end
