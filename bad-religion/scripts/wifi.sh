#!/bin/bash

label_ssid=$(iw wlp3s0 info | grep ssid | cut -d' ' -f2)
label_ip=$(ip addr show dev wlp3s0 | grep -w inet | cut -d' ' -f6)

echo "<openbox_pipe_menu>"
echo "    <item label=\"$label_ssid\"></item>"
echo "        <separator/>"
echo "    <item label=\"$label_ip\"></item>"
echo "</openbox_pipe_menu>"

