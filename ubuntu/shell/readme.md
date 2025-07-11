# 一、整体操作流程
## 1、创建脚本
[helloworld.sh](./helloworld.sh)
``` shell
#!/bin/bash
# 这是我的第一个shell脚本
echo "Hello World!"
```
- #!/bin/bash 称为 shebang，指定解释器
- 使用#注释
- echo 用于输出文本

## 2、执行脚本
```shell
# 方法1：使用bash命令
bash script.sh

# 方法2：添加可执行权限后直接运行
chmod +x script.sh
./script.sh
```

# 二、语法
## 1、变量
[var.sh](./var.sh)
```shell
#!/bin/bash
echo "上一条命令退出状态：$?"
echo "当前脚本(current script)：$0"
echo "当前脚本参数：$# $10"
echo "当前脚本所有参数：$*"
echo "当前脚本进程ID：$$"

name="xinshuai"
age=25
echo "my name is ${name} and I'm ${age} years old."

# 数组
person=(
    "xinshuai","male",25,"NJ"
    "jack","remale",25,"SH"
)
echo "xinshuai info: ${person[0]}"
echo "xinshuai info: ${person[1]}"
echo "person info: ${person[@]}"
echo "info nums: ${#person[@]}"
```
## 2、条件
[if.sh](./if.sh)
[case.sh](./case.sh)
```shell
#!/bin/bash
read -p "请输入一个数字：" number
if [ $number -gt 0 ]; then
    echo "大于0"
elif [ $number == 0 ];then
    echo "= 0"
else
    echo "..."
fi
```
- [] 内两侧需要空格
- == 两侧需要空格

```shell
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
```

## 3、循环
[for.sh](./for.sh)
[while.sh](./while.sh)
``` shell
#!/bin/bash
for i in {1..10}; do
    echo "数字 : $i"
done

for file in *.sh; do
    echo "处理文件: $file"
done
```
```shell
#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "计数: $count"
    ((count++))
done

while true; do
    echo "running"
done
```

## 4、函数
[function.sh](./function.sh)
```shell
greet() {
    local name=$1  # local 表示局部变量
    echo "Hello, $name!"
}
```
## 5、IO
```shell
read -p "请输入你的名字: " username
printf "姓名: %-10s 年龄: %03d\n" "Alice" 25
```




