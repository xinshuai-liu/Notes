#!/bin/bash
# 函数
greet() {
    local name=$1  # local 表示局部变量
    echo "Hello, $name!"
}
# 调用
greet "xinshuai"