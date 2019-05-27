#!/bin/sh

#nr telefonu - ^([+]?[0-9]{,3})[0-9]{9,15}$

#email - ^[a-zA-Z\_\-\.0-9]+@([a-zA-Z0-9]+\.)+[a-zA-Z]+$

#data i godzina - ^[0-9]{4}\-[0-1][0-9]\-[0-3][0-9]\T[0-2][0-9]\:[0-5][0-9]\:[0-5][0-9]\+[0-1][0-9]:[0-9]{2}$



wget -qO-  https://pl.wikipedia.org/wiki/DDoS | grep -Eo "<a.+href.+</a>"
