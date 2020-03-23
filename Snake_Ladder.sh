#!/bin/bash -x

Start_Position=0
player_1=0
count=0
while [ $player_1 != 100 ]
do
read -p "Enter 1 to role the die " input
die=$(($((RANDOM%6))+1))
((count++))
if [[ $input -eq 1 && $(($player_1+$die)) -le 100 ]]
then
echo "Player is at $player_1"
player_1=$(($player_1+$die))
case $player_1 in

	3)
		player_1=51	#ladder
		;;
	6)
                player_1=27	#ladder
                ;;
	20)
                player_1=70	#ladder
                ;;
	36)
                player_1=55	#ladder
                ;;
	63)
                player_1=95	#ladder
                ;;
	68)
                player_1=98	#ladder
                ;;
	25)
                player_1=5	#snake
                ;;
        34)
                player_1=1	#snake
                ;;
        47)
                player_1=19	#snake
                ;;
        65)
                player_1=52	#snake
                ;;
        87)
                player_1=57	#snake
                ;;
        91)
                player_1=61	#snake
                ;;
	99)
		player_1=69	#snake
		;;
	*)
		;;

esac

else
	echo "You are at $player_1 possition"
fi
done
echo "!!!!!!!You win the Game!!!!!!!!!"
echo "Total $count time chance needed to win the game"
