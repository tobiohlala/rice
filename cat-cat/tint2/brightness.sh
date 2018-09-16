#!/bin/bash

cur=$(xbacklight -get | cut -d. -f1)

if (( 0<=cur && cur<=20 )); then

    brightness="│\n│\n│\n│\n┃"

elif (( 21<=cur && cur<=40 )); then

    brightness="│\n│\n│\n┃\n┃"

elif (( 41<=cur && cur<=60 )); then

    brightness="│\n│\n┃\n┃\n┃"

elif (( 61<=cur && cur<=80 )); then

    brightness="│\n┃\n┃\n┃\n┃"

elif (( 81<=cur && cur<=100 )); then

    brightness="┃\n┃\n┃\n┃\n┃"

fi

echo -e "$brightness\n"

