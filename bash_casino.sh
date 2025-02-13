money=100

progressbar(){
	echo -n "Loading: "
	for i in {1,10}; do
		sleep 0.5
		echo -n "#"
	done
	echo ""
}

slots(){
	while true; do
	echo ""
	echo "=========="
	echo "  Slots   "
	echo "=========="
	echo "1) Spin"
	echo "2) Clear"
	echo "3) Exit"
	read choice
	case $choice in
		1)
			a=$(( RANDOM % 9 + 1))
			b=$(( RANDOM % 9 + 1))
			c=$(( RANDOM % 9 + 1))
			
			echo -n "   $a    "
			sleep 1		
			echo -n "   $b    "
			sleep 1
			echo -n "   $c    "
			echo ""
			echo ""
			
			if [[ ($a -eq 7) && ($b -eq 7) && ($c -eq 7) ]]; then
				echo -n "Congratulations you won XXX money !!!"
				echo ""
			else 
				echo -n "You lost"
				echo ""
			fi
			;;
	
		2)
			clear
			;;
	
		3)
			break
			;;

		*)
			echo "Wrong command"
			sleep 1
			;;
	esac
	done
}

mainmenu(){
	echo "==================================="
	echo "    Welcome to the Bash Casino	 "
	echo "==================================="
	echo "1) Slots"
	echo "5) Check Balance"
	echo "6) Exit"
	echo -n "Please select an option:"
}

while true; do
	mainmenu
	read choice

	case $choice in
		1)
			progressbar
			sleep 2
			slots
			;;
		5)
			echo "You currently have, $money money"
			sleep 3
			;;
		6)
			echo "Exiting casino..."
			progressbar
			break
			;;
		*)
			echo "Wrong command"
			sleep 3
			;;
	esac
done
