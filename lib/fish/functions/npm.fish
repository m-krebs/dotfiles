function npm --description 'Node Package Manager'
    if test ! -n "$argv"
        command npm; return
    end
    if test $argv[1] = scripts
        if test ! -e package.json
            echo "No package.json in cwd"
            return 1
        end
        if ! command -v jq > /dev/null
            echo "jq is required"
            return 1
        end
        command cat package.json | jq -r '.scripts'
    end
end
