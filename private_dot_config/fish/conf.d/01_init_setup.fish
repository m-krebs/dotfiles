function fish_init_setup
	set binaries bass mvn omf fish bash
	for binary in $binaries
		if ! command -v $binary &>/dev/null
			set $binaryvar true
		end
		echo $binaryvar
	end
        if ! command -v bass &>/dev/null
                echo "[i] bass is not installed"
        end
        if ! command -v fish &>/dev/null
                echo "[i] bass is not installed"
        end
end
fish_init_setup

set -l bassval $(command -v bass &>/dev/null)
echo command -v bass &>/dev/null
