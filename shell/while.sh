#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "计数: $count"
    ((count++))
done

while true; do
    echo "running"
done