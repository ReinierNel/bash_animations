#!/bin/bash

A1=" "
A2=" "
A3=" "
B1=" "
B2=" "
B3=" "
C1=" "
C2=" "
C3=" "

U=1
P1=0
P2=0

error="Can't do that try again.."

while :
do
    clear

    echo -e  "
    Score: P1: $P1 P2: $P2

       1    2    3
    A  $A1 |  $A2  | $A3 
    -----------------
    B  $B1 |  $B2  | $B3 
    -----------------
    C  $C1 |  $C2  | $C3 
    "

    case $win in

    1)
        echo "Player 1 Wins !!!"
        win=0
        read -p "HIT (R) to Reset: " move
        ;;
    2)
        echo "Player 2 Wins !!!"
        win=0
        read -p "HIT (R) to Reset: " move
        ;;
    *)
        read -p "Player $U Turn: " move
        ;;
    esac

    
    case $move in

    "A1")

        if [[ "$A1" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                A1="O"
                U=2 
            else
                A1="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "A2")

        if [[ "$A2" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                A2="O"
                U=2 
            else
                A2="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "A3")

        if [[ "$A3" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                A3="O"
                U=2 
            else
                A3="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "B1")

        if [[ "$B1" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                B1="O"
                U=2 
            else
                B1="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "B2")

        if [[ "$B2" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                B2="O"
                U=2 
            else
                B2="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "B3")

        if [[ "$B3" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                B3="O"
                U=2 
            else
                B3="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "C1")

        if [[ "$C1" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                C1="O"
                U=2 
            else
                C1="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;

    "C2")

        if [[ "$C2" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                C2="O"
                U=2 
            else
                C2="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;
      
    "C3")
        if [[ "$C3" == " " ]];
        then
            if [ $U -eq 1 ];
            then
                C3="O"
                U=2 
            else
                C3="X"
                U=1
            fi
        else
            echo $error
            sleep 1
        fi
        ;;
    "R")
        A1=" "
        A2=" "
        A3=" "
        B1=" "
        B2=" "
        B3=" "
        C1=" "
        C2=" "
        C3=" "
        echo "Reset!!!"
        sleep 0.5
        ;;
    *)
        echo $error
        sleep 1
        
    esac

    win_combo=(
        "$A1$A2$A3"
        "$A1$B1$C1"
        "$B1$B2$B3"
        "$A2$B2$C2"
        "$C1$C2$C3"
        "$A3$B3$C3"
        "$A1$B2$C3"
        "$A3$B2$C1"
    )

    for who_win in ${win_combo[@]}
    do
        if [[ "$who_win" == "OOO" ]];
        then
            win=1
            ((P1=P1+1))
        fi

        if [[ "$who_win" == "XXX" ]];
        then
            win=2
            ((P2=P2+1))
        fi
    done
    
    sleep 0.1

done
