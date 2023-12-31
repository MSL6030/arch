#!/bin/bash
setfont cyr-sun16
xfconf-query --channel xfce4-terminal --property /misc-right-click-action --create --type string --set TERMINAL_RIGHT_CLICK_ACTION_PASTE_CLIPBOARD
xfconf-query --channel xfce4-terminal --property /misc-mouse-autohide --create --type string --set true
xfconf-query --channel xfce4-terminal --property /shortcuts-no-menukey --create --type string --set true
xfconf-query --channel xfce4-terminal --property /shortcuts-no-mnemonics --create --type string --set true
vmware-view --serverURL=x315.krost.net --fullscreen --singleAutoConnect --nomenubar --once
shut=0
while shut==0
do
	clear
	echo Меню:
	echo 1 - Подключиться заново
	echo 2 - Тестировать интернет
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
    			shutdown now
		;;
 		*)
  			echo Нет такого пункта меню
    			sleep 2
      		;;
	esac
done
shutdown now
