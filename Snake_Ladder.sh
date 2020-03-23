#!/bin/bash -x

Start_Position=0
player_1=0
while [ $player_1 != 100 ]
do
read -p "Enter 1 to role the die " input
if [[ $input == 1 ]]
then
die=$(($((RANDOM%6))+1
player_1=$(($player_1+$die))
case $player_1 in

	3)
		player_1=51
		;;
	6)
                player_1=27
                ;;
	20)
                player_1=70
                ;;
	36)
                player_1=55
                ;;
	63)
                player_1=95
                ;;
	68)
                player_1=98
                ;;
	25)
                player_1=5
                ;;
        34)
                player_1=1
                ;;
        47)
                player_1=19
                ;;
        65)
                player_1=52
                ;;
        87)
                player_1=57
                ;;
        91)
                player_1=61
                ;;
	99)
		player_1=69
		;;
	*)
		;;

esac

else
	echo "You are at $player_1 possition"
fi
done
<<<<<<< HEAD
=======
echo "!!!!!!!You win the Game!!!!!!!!!!"
>>>>>>> UC4_Winning_100
