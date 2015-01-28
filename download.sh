#!/bin/bash

#download pdf from ieee
# http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6751131


base="http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=";
startnum=6751131;
papernum=10;
i=0;
suffix=0;

while [ $i -lt $papernum ]
do
    #suffix='expr $i + $startnum'
    suffix=`expr $i + $startnum`
    echo $base$suffix
    i=`expr $i + 1`
    sleep 1
    
    #download the file by firefox
    #please ensure firefox->setting->programe->pdf->save
    firefox -new-tab $base$suffix
done


