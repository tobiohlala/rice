#!/bin/bash

muted=$(amixer get Master | grep "\[" | cut -d[ -f4 | grep -o "[a-z]*")
cur=$(amixer get Master | grep "\[" | cut -d[ -f2 | grep -o "[0-9]*")


if (( cur<=0 )); then

    vol="│\n│\n│\n│\nX"

elif (( 1<=cur && cur<=10 )); then

    vol="│\n│\n│\n│\n╽"

elif (( 11<=cur && cur<=20 )); then

    vol="│\n│\n│\n│\n┃"

elif (( 21<=cur && cur<=30 )); then

    vol="│\n│\n│\n╽\n┃"

elif (( 31<=cur && cur<=40 )); then

    vol="│\n│\n│\n┃\n┃"

elif (( 41<=cur && cur<=50 )); then

    vol="│\n│\n╽\n┃\n┃"

elif (( 51<=cur && cur<=60 )); then

    vol="│\n│\n┃\n┃\n┃"

elif (( 61<=cur && cur<=70 )); then

    vol="│\n╽\n┃\n┃\n┃"

elif (( 71<=cur && cur<=80 )); then

    vol="│\n┃\n┃\n┃\n┃"

elif (( 81<=cur && cur<=90 )); then

    vol="╽\n┃\n┃\n┃\n┃"

elif (( 91<=cur && cur<=100 )); then

    vol="┃\n┃\n┃\n┃\n┃"

fi

if [ "$muted" == "off" ]; then

    vol="│\n│\n│\n│\nX"

fi

echo -e "$vol\n"

