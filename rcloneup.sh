#!/bin/sh
src=$1
src=$src
dst=od:oracle1upload/$2  #填写上传目的地的目录名
echo  {$src} >/root/test.log    #上传文件日志输出
rclone -v copy --ignore-existing "$src" "$dst" --log-file=/root/rclone.log       #rclone日志输出
