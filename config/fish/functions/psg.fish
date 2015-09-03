function psg
	ps -e  | head -n 1
	ps -e  | grep $argv
end
