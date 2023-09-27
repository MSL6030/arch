#!/bin/bash
vmware-view --serverURL=x315.krost.net --fullscreen --singleAutoConnect --nomenubar --once
PS3="Введите номер: "
select m in Подключиться_заново Тестировать_сеть Выключить_компьютер
do
	if [$m=="Выключить_компьютер"]
	then
		echo OK
		break
	fi
	vmware-view бла бла
done
shutdown now
