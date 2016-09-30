#!/bin/bash
# 👤 hzlu2010@gmail.com
# 📅 2017/09/30
# 初始化管须鼠配置(Mac only)
# 执行$ ./init.sh

echo "准备初始化Rime配置..."
export user=$(whoami)
export rime_dir="/Users/$user/Library/Rime/"
echo "配置目录: $rime_dir"

if [ ! -d $rime_dir ]; then
  echo "未找到Rime配置目录, 配置结束!"
  exit 1
fi

find `pwd` -type l -name '*.yaml' | awk 'BEGIN {
  FS="/"
  OSF="\t"
  "echo $rime_dir" | getline; rime_dir=$0
}
{
  # print $0, rime_dir$(NF);
  system("ln -sf "$0" "rime_dir$(NF))
}'

echo "配置完成, 请重新部署鼠须管(⌃ + ⌥ + \`)"

