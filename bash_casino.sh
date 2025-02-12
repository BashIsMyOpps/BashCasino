money=100

progressbar(){
	echo -n "Loading: "
	for i in {1,10}; do
		sleep 0.5
		echo -n "#"
	done
	echo ""
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
			echo "Game in development"
			sleep 3
			clear
			;;

		5)
			echo "You currently have, $money money"
			sleep 3
			clear
			;;
		6)
			echo "Exiting casino..."
			progressbar
			break
			clear
			;;
		*)
			echo "Wrong command"
			sleep 3
			clear
			;;
	esac
done
