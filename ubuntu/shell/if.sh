#!/bin/bash

read -p "请输入一个数字：" number

if [ $number -gt 0 ]; then
    echo "大于0"
elif [ $number == 0 ];then
    echo "= 0"
else
    echo "..."
fi