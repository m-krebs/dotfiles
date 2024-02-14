function config --wraps='/usr/bin/git --git-dir=/home/mkrebs/.cfg/ --work-tree=/home/mkrebs' --description 'alias config=git --git-dir=/home/mkrebs/.cfg/ --work-tree=/home/mkrebs'
    /usr/bin/git --git-dir=/home/mkrebs/.cfg/ --work-tree=/home/mkrebs $argv

end
