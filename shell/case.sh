#!/bin/bash

echo "请选择一个选项:"
echo "1) 显示日期"
echo "2) 显示当前用户"
echo "3) 退出"

read opt

case $opt in
    1) 
        date;;
    2)
        whoami;;
    3)
        exit 0;;
    *)
        echo "无效选项";;
esac