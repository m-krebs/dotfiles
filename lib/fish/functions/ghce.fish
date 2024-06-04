function ghce --description 'Explain <command> using GitHub Copilot'
  set -l GH_DEBUG $GH_DEBUG
  set -l __USAGE "Did you ever wonder what a command does? Or why it was suggested to you? Now you can find out!

Usage:
  ghce [command] [flags]

Examples:

# View disk usage, sorted by size
\$ ghce 'du -sh | sort -h'

# View git repository history as text graphical representation
\$ ghce 'git log --oneline --graph --decorate --all'

# Remove binary objects larger than 50 megabytes from git history
\$ ghce 'bfg --strip-blobs-bigger-than 50M'


Flags:
  -h, --help   help for explain"

  argparse d/debug h/help -- $argv 
  or return

  if set -ql _flag_help
    echo "$__USAGE"
    return 0
  else if set -ql _flag_debug
    set GH_DEBUG api
  end

  for opt in $argv
    switch $opt
      case '-d' '--debug'
        set GH_DEBUG api
      case '-h' '--help'
        echo "$__USAGE"
        return 0
    end
  end

  env GH_DEBUG="$GH_DEBUG" gh copilot explain $argv
end
