#!/bin/bash

TODAY=$(date)
HOST=$(hostname)
VER=$(uname -r)
result=$(ps aux | less)
memUsage=$(free -m | awk '/Mem/{print $3}')
hardFree=$(df -h --total /dev /run)
apache=$(dpkg --get-selections | grep apache)

function wel() { 
echo "Welcome!!"
echo "Date: $TODAY      Host:$HOST       Linux version:$VER"
echo "-----------------------------------------------------"
}

function f1() { echo "the running process are .. $result"
}
function f2() { echo "Memory Usage: $memUsage MB"
}
function f3() { echo "hard disk status: $hardFree"
}
function f4() { echo "apache status: $apache"
            if [ ! -n "$apache" ]
            then
	echo "$0 - Error \$var not set or NULL"
            else
	echo "$(apache2 -v)"
             fi 
}

function sub1(){ PS3='Please enter your subopt: '
            options=("subopt 1" "subopt 2" "Quit")
            select subopt in "${options[@]}"
            do 
            case $subopt in
            "subopt 1") wel
            ;;
            "subopt 2") f1
            ;;
           "Quit")
           break
            ;;
           *) echo "invalid option $REPLY";;
           esac
           done
            }         

function sub2(){ PS3='Please enter your subopt: '
            options=("subopt 1" "subopt 2" "Quit")
            select subopt in "${options[@]}"
            do 
            case $subopt in
            "subopt 1") wel
            ;;
            "subopt 2") f1
            ;;
           "Quit")
           break
            ;;
           *) echo "invalid option $REPLY";;
           esac
           done
            }         

function sub3(){ PS3='Please enter your subopt: '
            options=("subopt 1" "subopt 2" "Quit")
            select subopt in "${options[@]}"
            do 
            case $subopt in
            "subopt 1") wel
            ;;
            "subopt 2") f1
            ;;
           "Quit")
           break
            ;;
           *) echo "invalid option $REPLY";;
           esac
           done
            }         

function sub4(){ PS3='Please enter your subopt: '
            options=("subopt 1" "subopt 2" "Quit")
            select subopt in "${options[@]}"
            do 
            case $subopt in
            "subopt 1") wel
            ;;
            "subopt 2") f1
            ;;
           "Quit")
           break
            ;;
           *) echo "invalid option $REPLY";;
           esac
           done
            }         

function flag(){ 
options=("p" "r" "h" "a")
select flag in "${options[@]}"
do
    case $flag in
        "p") f1 
        break;;
        "r") f2 
        break;;
        "h") f3 
        break;;
        "a") f4 
        break;;
         *) echo "invalid option $REPLY";;
    esac
done
}


PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Option 4" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1") 
            f1
            sub1   
            ;;
        "Option 2")
            f2 
            sub2
            ;;
        "Option 3")
            f3
            sub3
            ;;
        "Option 4")
            f4
            sub4
            ;;
        "Quit")
            break
            ;;
        *) flag 
            ;;

esac
done



