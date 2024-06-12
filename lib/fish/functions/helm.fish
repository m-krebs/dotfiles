function helm
    if test -n "$argv"
        if test $argv[1] = repackage
            # get name: of Chart.yaml
            set h_name (cat Chart.yaml | yq .name);
            set h_v (cat Chart.yaml | yq .version);
            # command echo "Repackaging $h_name-$h_v";
            command rm "$h_name-$h_v.tgz"
            command helm package .
        else
            command helm $argv
        end
    else
        command helm
    end
end
