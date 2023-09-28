#!/bin/bash
vmware-view --serverURL=x315.krost.net --fullscreen --singleAutoConnect --nomenubar --once
shut=0
while shut==0
do
	clear
	echo Меню:
	echo 1 - Подключиться заново
	echo 2 - Тестировать сеть
	echo 3 - Выключить компьютер
	read -p 'Введите номер: ' result
	case $result in
 		1)
  			vmware-view --serverURL=x315.krost.net --fullscreen --singleAutoConnect --nomenubar --once
    		;;
     		2)
      			ping ya.ru -c 5
			echo test
  			echo test
    		;;
     		3)
      			shut=1
	 		echo Пока!
    			shitdown now
		;;
 		*)
  			echo Нет такого пункта меню
    			sleep 2
      		;;
	esac
done
shutdown now
