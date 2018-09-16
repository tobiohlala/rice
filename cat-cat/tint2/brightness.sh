#!/bin/bash

cur=$(xbacklight -get | cut -d. -f1)

if (( 0<=cur && cur<=10 )); then

    brightness="│\n│\n│\n│\n╽"

elif (( 11<=cur && cur<=20 )); then

    brightness="│\n│\n│\n│\n┃"

elif (( 21<=cur && cur<=30 )); then

    brightness="│\n│\n│\n╽\n┃"

elif (( 31<=cur && cur<=40 )); then

    brightness="│\n│\n│\n┃\n┃"

elif (( 41<=cur && cur<=50 )); then

    brightness="│\n│\n╽\n┃\n┃"

elif (( 51<=cur && cur<=60 )); then

    brightness="│\n│\n┃\n┃\n┃"

elif (( 61<=cur && cur<=70 )); then

    brightness="│\n╽\n┃\n┃\n┃"

elif (( 71<=cur && cur<=80 )); then

    brightness="│\n┃\n┃\n┃\n┃"

elif (( 81<=cur && cur<=90 )); then

    brightness="╽\n┃\n┃\n┃\n┃"

elif (( 91<=cur && cur<=100 )); then

    brightness="┃\n┃\n┃\n┃\n┃"

fi

echo -e "$brightness\n"

