#!/usr/bin/bash
id=$(xinput --list|grep -i dll079F|tr -s " "|cut -d= -f2|cut -f1|tr -d " "	)
status=$(xinput list $id|grep -i disabled)
if [ "$status" == "" ];then 
    #esta activo
     xinput disable $id
else
     xinput enable $id
fi
