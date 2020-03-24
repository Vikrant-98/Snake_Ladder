#!/bin/bash -x

Start_Position=0
player=0
player_1=$Start_Position
player_2=$Start_Position
count_1=0
count_2=0
turn=0
while [ $player != 100 ]
do
if [ $turn == 0 ]
then
	player=$player_1
	((turn++))
elif [ $turn == 1 ]
then
	player=$player_2
	((turn--))
fi
read -p "Enter 1 to role the die " input
die=$(($((RANDOM%6))+1))
if [ $turn == 1 ]
then
	((count_1++))
elif [ $turn == 0 ]
then
	((count_2++))
fi
if [[ $input -eq 1 && $(($player+$die)) -le 100 ]]
then
echo "Player is at $player"
player=$(($player+$die))
case $player in

	3)
		player=51	#ladder
		;;
	6)
                player=27	#ladder
                ;;
	20)
                player=70	#ladder
                ;;
	36)
                player=55	#ladder
                ;;
	63)
                player=95	#ladder
                ;;
	68)
                player=98	#ladder
                ;;
	25)
                player=5	#snake
                ;;
        34)
                player=1	#snake
                ;;
        47)
                player=19	#snake
                ;;
        65)
                player=52	#snake
                ;;
        87)
                player=57	#snake
                ;;
        91)
                player=61	#snake
                ;;
	99)
		player=69	#snake
		;;
	*)
		;;

esac

if [ $turn == 1 ]
then
        player_1=$player
elif [ $turn == 0 ]
then
        player_2=$player
fi

else
	echo "You are at $player possition"
fi
done
if [ $player_1 == 100 ]
then
        echo "!!!!!!!Player_1 win the Game!!!!!!!!!"
	echo "Total $count_1 time chance needed to win the game"
elif [ $player_2 == 100 ]
then
        echo "!!!!!!!Player_2 win the Game!!!!!!!!!"
	echo "Total $count_2 time chance needed to win the game"

fi
