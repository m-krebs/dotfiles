function ghcs --description 'alias for gh copilot suggest'
  set -l __DEBUG "$GH_DEBUG"
  set -l __TARGET "shell"
  set -l __USAGE "Suggest a command based on a natural language description of the desired ging

There is no task too small or too large to need help when working in the terminal, the only limit is your imagination:

- installing and upgrading software
- troubleshooting and debugging problems with your system
- processing and manipulating files
- working with git and GitHub in the terminal

Usage:
  ghcs [prompt] [flags]

Examples:

- Guided experience
  \$ ghcs

- Git use cases
  \$ ghcs -t git \"Undo the most recent local commits\"
  \$ ghcs -t git \"Clean up local branches\"
  \$ ghcs -t git \"Setup LFS for images\"

- Working with the GitHub CLI in the terminal
  \$ ghcs -t gh \"Create pull request\"
  \$ ghcs -t gh \"List pull requests waiting for my review\"
  \$ ghcs -t gh \"Summarize work I have done in issues and pull requests for promotion\"

- General use cases
  \$ ghcs -t shell \"Kill processes holding onto deleted files\"
  \$ ghcs -t shell \"Test whether there are SSL/TLS issues with github.com\"
  \$ ghcs -t shell \"Convert SVG to PNG and resize\"
  \$ ghcs -t shell \"Convert MOV to animated PNG\"


Flags:
  -h, --help               help for suggest
  -d, --debug              Enable debugging
  -t, --target target      Target for suggestion; must be shell, gh, git
"

  argparse h/help s/shell-out t/target= -- $argv 
  or return

  if set -ql _flag_help
    echo "$__USAGE"
    return 0
  else if set -ql _flag_debug
    set __DEBUG api
  end

  if set -ql _flag_target
    set __TARGET $_flag_target
  end

  set -l TMPFILE (mktemp -t gh-copilotXXX)
  trap "rm -f $TMPFILE" EXIT

  if env GH_DEBUG="$__DEBUG" gh copilot suggest "$argv" -t $__TARGET -s $TMPFILE
    cat $TMPFILE
  else
    echo "Failed to suggest command"
  end
end
