#!/bin/bash
# 系统资源监控

echo "====== 系统监控 ======"
echo "当前时间: $(date)"
echo "主机名: $(hostname)"
echo "CPU使用率: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')%"
echo "内存使用: $(free -m | awk '/Mem/{print $3"MB/"$2"MB"}')"
echo "磁盘使用: $(df -h | awk '/\/$/{print $3" used / "$2" total"}')"