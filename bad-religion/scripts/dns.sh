#!/bin/bash

label_provider=$(cat /etc/resolv.conf.head | grep "#" | cut -d" " -f2)
label_ns1=$(cat /etc/resolv.conf.head | grep nameserver | head -n 1 | cut -d" " -f2)
label_ns2=$(cat /etc/resolv.conf.head | grep nameserver | tail -n 1 | cut -d" " -f2)

echo "<openbox_pipe_menu>"
echo "    <item label=\"$label_provider\"></item>"
echo "    <separator/>"
echo "    <item label=\"$label_ns1\"></item>"
echo "    <item label=\"$label_ns2\"></item>"
echo "</openbox_pipe_menu>"

