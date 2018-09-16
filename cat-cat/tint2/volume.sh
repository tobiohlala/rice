#!/bin/bash

muted=$(amixer get Master | grep "\[" | cut -d[ -f4 | grep -o "[a-z]*")
cur=$(amixer get Master | grep "\[" | cut -d[ -f2 | grep -o "[0-9]*")

if (( 0==cur )); then

    vol="│\n│\n│\n│\nX"

elif (( 0<cur && cur<=20 )); then

    vol="│\n│\n│\n│\n┃"

elif (( 21<=cur && cur<=40 )); then

    vol="│\n│\n│\n┃\n┃"

elif (( 41<=cur && cur<=60 )); then

    vol="│\n│\n┃\n┃\n┃"

elif (( 61<=cur && cur<=80 )); then

    vol="│\n┃\n┃\n┃\n┃"

elif (( 81<=cur && cur<=100 )); then

    vol="┃\n┃\n┃\n┃\n┃"

fi

if [ "$muted" == "off" ]; then

    vol="│\n│\n│\n│\nX"

fi

echo -e "$vol\n"

