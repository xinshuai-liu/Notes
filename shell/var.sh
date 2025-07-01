#!/bin/bash

echo "上一条命令退出状态：$?"
echo "当前脚本(current script)：$0"
echo "当前脚本参数：$# $10"
echo "当前脚本所有参数：$*"
echo "当前脚本进程ID：$$"

name="xinshuai"
age=25
echo "my name is ${name} and I'm ${age} years old."

person=(
    "xinshuai","male",25,"NJ"
    "jack","remale",25,"SH"
)
echo "xinshuai info: ${person[0]}"
echo "xinshuai info: ${person[1]}"
echo "person info: ${person[@]}"
echo "info nums: ${#person[@]}"