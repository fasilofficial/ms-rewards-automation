#!/bin/bash

URL_START="https://www.bing.com/search?q="
URL_END="&qs=n&form=QBRE&sp=-1&lq=0&pq=asdsfzcxredsfssdfcdfcdfx&sc=1-24&sk=&cvid=10F60398AD114CF19709C09928B799E6&ghsh=0&ghacc=0&ghpl="

for ((i=0; i<4; i++))
do
    RANDOM_STRING=$(cat /dev/urandom | LC_ALL=C tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
    URL="$URL_START$RANDOM_STRING$URL_END"
    microsoft-edge "$URL" &
    sleep 8
done
