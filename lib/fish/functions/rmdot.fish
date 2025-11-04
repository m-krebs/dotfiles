function rmdot
        echo -e "###############################################\n--> $(pwd) <--\n###############################################"
        read -P "Are you sure you want to delete this directory? (y/N): " answer
        if test "$answer" != "y"
                echo "Cancelled by user."
                return
        end
        set dir_to_delete $(pwd)
        cd ..
        rm -rf $dir_to_delete
        echo "directory is gone."
end
