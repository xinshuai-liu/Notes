<div align="center">
  <a href="https://www.baidu.com">
    <picture>
      <img alt="Next.js logo" src="../../resources/images/lion.png" height="128">
    </picture>
  </a>

  <strong>Lion</strong>
  
  <a href="https://www.baidu.com">
    <img alt="Join the community on GitHub" src="https://img.shields.io/badge/Join%20the%20community-blueviolet.svg?style=for-the-badge&logo=Next.js&labelColor=000000&logoWidth=20">
  </a>
</div>

## [TOC](#toc)
- [demo](#demo)
- [types and io](#types-and-io)
- [control flow](#control-flow)
    - [branch](#branch)
    - [loop](#loop)
- [functions](#functions)

## [demo](#toc)
#### 1、创建脚本
``` shell
#!/bin/bash
# 这是我的第一个shell脚本
echo "Hello World!"
```
- #!/bin/bash 称为 shebang，指定解释器
- 使用#注释
- echo 用于输出文本

#### 2、执行脚本
```shell
# 方法1：使用bash命令
bash script.sh

# 方法2：添加可执行权限后直接运行
chmod +x script.sh
./script.sh
```
#### 注：系统资源监控脚本
```shell
#!/bin/bash
# 系统资源监控

echo "====== 系统监控 ======"
echo "当前时间: $(date)"
echo "主机名: $(hostname)"
echo "CPU使用率: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')%"
echo "内存使用: $(free -m | awk '/Mem/{print $3"MB/"$2"MB"}')"
echo "磁盘使用: $(df -h | awk '/\/$/{print $3" used / "$2" total"}')"
```
## [types and io](#toc)
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

person=(
    "xinshuai","male",25,"NJ"
    "jack","remale",25,"SH"
)
echo "xinshuai info: ${person[0]}"
echo "xinshuai info: ${person[1]}"
echo "person info: ${person[@]}"
echo "info nums: ${#person[@]}"
```
io
```shell
#!/bin/bash

read -p "请输入你的名字: " username

printf "姓名: %-10s 年龄: %02d\n" ${username} 25
```
## [control flow](#toc)
### [branch](#toc)
```shell
#!/bin/bash

# [] 内两侧需要空格
# == 两侧需要空格

# if-else
read -p "请输入一个数字：" number

if [ $number -gt 0 ]; then
    echo "大于0"
elif [ $number == 0 ];then
    echo "= 0"
else
    echo "..."
fi

# case
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
### [loop](#toc)
```shell
#!/bin/bash

# for
for i in {1..10}; do
    echo "数字 : $i"
done

for file in *.sh; do
    echo "处理文件: $file"
done

# while
count=1
while [ $count -le 5 ]; do
    echo "计数: $count"
    ((count++))
done

while true; do
    echo "running"
done
```
## [functions](#toc)

```shell
#!/bin/bash
# 函数
greet() {
    local name=$1  # local 表示局部变量
    echo "Hello, $name!"
}
# 调用
greet "xinshuai"
```




