#!/bin/bash
R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
PU="\033[1;34m"
PI="\033[1;35m"
B="\033[1;36m"
W="\033[1;37m"
X="\033[4m"
# Function to install packages
install_package() {
    echo -e  "${G}Installing $1..."
    if [[ $DISTRO == "termux" ]]; then

        pkg install -y $1

    elif [[ $DISTRO == "ubuntu" || $DISTRO == "kali" ]]; then

      sudo apt-get install -y $1

    else

        echo -e "${R} Unsupported distribution."
        exit 1
    fi
clear
for ((i=1; i<=5; i++))
do
echo
done
    echo -e "${G} $1 Installed Successfully!"
sleep 2
for ((i=1; i<=5; i++))
do
echo
done
}

# Detect distribution
if [ -f /data/data/com.termux/files/usr/bin/apt ]; then
    DISTRO="termux"

elif [ -f /usr/bin/apt ]; then
    DISTRO="ubuntu"

elif [ -f /usr/bin/apt-get ]; then
    DISTRO="kali"

else
    echo -e "${R}Unsupported distribution."
    exit 1
fi

clear

for ((i=1; i<=3; i++))
do
echo
done
	echo -e "\033[1;32m"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠈⠻⢿⠿⠋⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠉⠙⠛⠛⠛⠛⢛⣛⣉⣁⣀⣈⣉⣙⣛⣿⣿⣿⣿⣿⣿"
echo -e "\t⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠼⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿"
echo -e "\t⣿⣿⣿⣿⣿⣿⠿⠶⠶⣶⡶⣶⣴⣤⣤⣤⣤⣤⣤⣶⣶⣶⡶⠶⠿⢿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⡿⠋⠁⠀⠀⠀⠹⣆⡀⠀⠀⣠⣶⣶⣄⠀⠀⢀⣾⡇⠀⠀⠀⠈⠻⣿⣿⣿⣿"
echo -e "\t⣿⣿⣯⣤⣄⣀⣀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⢀⣀⣀⣤⣤⣽⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⠀⠙⢿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣥⣀⡀⠀⠀⠀⠙⢿⣿⣿⠏⠀⠀⠀⠀⣀⣠⣽⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣄⡀⠀⣸⠃⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡏⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"


for ((i=1; i<=5; i++))
do
echo
done

	echo -e "\t ${R}WELCOME TO LINUX PACKAGE MANAGER"
for ((i=1; i<=5; i++)) do
echo
done

echo -e "\t${R}Boss ${PI}Select ${B}'Tool' ${W}To ${G}Install"

for ((i=1; i<=3; i++))
do
echo
done

	echo -e "\t${Y}CODE ${W}BY ${B}MANJUNATH"

for ((i=1; i<=5; i++))
do
echo
done

echo -e "\t${Y}1.  ${G}Python\n"
echo -e "\t${Y}2.  ${G}Python2\n"
echo -e "\t${Y}3.  ${G}Python3\n"
echo -e	"\t${Y}4.  ${G}PHP\n"
echo -e	"\t${Y}5.  ${G}Ruby\n"
echo -e "\t${Y}6.  ${G}Perl\n"
echo -e "\t${Y}7.  ${G}Go\n"
echo -e "\t${Y}8.  ${G}Figlet\n"
echo -e "\t${Y}9.  ${G}Git\n"
echo -e "\t${Y}10. ${G}Nano\n"
echo -e "\t${Y}11. ${G}Lolcat\n" 
echo -e "\t${Y}12. ${G}SSh\n"
echo -e "\t${Y}13. ${G}Wget\n"
echo -e "\t${Y}14. ${G}curl\n"
echo -e "\t${Y}15. ${G}Nmap\n"
echo -e "\t${Y}16. ${G}tmux\n"
echo -e "\t${Y}17. ${G}fish\n"
echo -e "\t${Y}18. ${G}htop\n"
echo -e "\t${Y}19. ${G}apache\n"
echo -e "\t${Y}20. ${G}toilet\n"
echo -e "\t${Y}21. ${G}vim\n"
echo -e "\t${Y}22. ${G}Netcat\n"
echo -e "\t${Y}23. ${G}sl\n"
echo -e "\t${Y}24. ${G}Zip\n"
echo -e "\t${Y}25. ${G}UnZip\n"
echo -e "\t${Y}26. ${G}Java\n"
echo -e "\t${Y}27. ${G}Exiftool\n"
echo -e "\t${Y}28. ${G}Libcaca\n"
echo -e "\t${Y}29. ${G}Termimage\n"
echo -e "\t${Y}30. ${G}w3m\n"
echo -e "\t${Y}31. ${G}fortune\n"
echo -e "\t${Y}32. ${G}Cmatrix\n"
echo -e "\t${Y}33. ${G}Screenfetch\n"
echo -e "\t${Y}34. ${G}Tor\n"
echo -e "\t${Y}35. ${G}tty-clock\n"
echo -e "\t${Y}36. ${G}neofetch\n"
echo -e "\t${Y}37. ${G}Moon-buggy\n"
echo -e "\t${Y}38. ${G}Clang\n"
echo -e "\t${Y}39. ${G}Proot-Distro\n"
echo -e "\t${Y}40. ${G}Termux-api\n"
echo -e "\t${Y}41. ${G}Cowsay\n"
echo -e "\t${Y}42. ${G}Oneko\n"
echo -e "\t${Y}43. ${G}Xeyes\n"
echo -e "\t${Y}44. ${G}Hollywood\n"
echo -e "\t${Y}45. ${G}Httrack\n"
echo -e "\t${Y}46. ${G}mlocate\n"
echo -e "\t${Y}47. ${G}Neovim\n"
echo -e "\t${Y}48. ${G}Hashcat\n"
echo -e "\t${Y}49. ${G}Hydra\n"
echo -e "\t${Y}50. ${G}Metasploit-Framework\n"
echo -e "\t${Y}51. ${G}Sqlmap\n"
echo -e "\t${Y}52. ${G}John the Ripper\n"
echo -e "\t${Y}53. ${G}Cror\n"
echo -e "\t${Y}54. ${G}Name-that-hash\n"
echo -e "\t${Y}55. ${G}Nikto\n"
echo -e "\t${Y}56. ${G}Bmon\n"
echo -e "\t${Y}57. ${G}zzuf\n"
echo -e "\t${Y}58. ${G}Termux-am\n"
echo -e "\t${Y}59. ${G}Termux-apt-repo\n"
echo -e "\t${Y}60. ${G}Termux-create-package\n"
echo -e "\t${Y}61. ${G}Openssh-sftp-server\n"
echo -e "\t${Y}62. ${G}Openssl-tool\n"
echo -e "\t${Y}63. ${G}Zig\n"
echo -e "\t${Y}64. ${G}Util-linux-static\n"
echo -e "\t${Y}65. ${G}Ruby-ri\n"
echo -e "\t${Y}66. ${G}Termux-gui-bash\n"
echo -e "\t${Y}67. ${G}Libxml2-python-static\n"
echo -e "\t${Y}68. ${G}Root-repo\n"
echo -e "\t${Y}69. ${G}Mautrix-whatsapp\n"
echo -e "\t${Y}70. ${G}Recode-static\n"
echo -e "\t${Y}71. ${G}Ytui-music\n"
echo -e "\t${Y}72. ${G}Mtools\n"
echo -e "\t${Y}73. ${G}Speedtest-go\n"
echo -e "\t${Y}74. ${G}Telegram-cli\n"
echo -e "\t${Y}75. ${G}Shell2http\n"
echo -e "\t${Y}76. ${G}Python-cryptography\n"
echo -e "\t${Y}77. ${G}Python-ensurepip-wheels\n"
echo -e "\t${Y}78. ${G}Mesa-vulkan-icd-swrast\n"
echo -e "\t${Y}79. ${G}Libde265-static\n"
echo -e "\t${Y}80. ${G}Pcaudiolib-static\n"
echo -e "\t${Y}81. ${G}Vulkan-loader-android\n"
echo -e "\t${Y}82. ${G}Mpg123-stati\n"
echo -e "\t${Y}83. ${G}Libcoinor-osi-static\n"
echo -e "\t${Y}84. ${G}Krb5\n"
echo -e "\t${Y}85. ${G}Cupp\n"
echo -e "\t${Y}86. ${G}Pkg-config\n"
echo -e "\t${Y}87. ${G}Googletest\n"
echo -e "\t${Y}88. ${G}Google-drive-upload\n"
echo -e "\t${Y}89. ${G}Gnurl-static\n"
echo -e "\t${Y}90. ${G}Go-findimagedupes\n"
echo -e "\t\a${Y}91. ${G}Exit-Script\n"
for ((i=1; i<=4; i++))
do
echo
done

	echo -e "\033[91m"
read -p "BOSS TOOL TO INSTALL : " choice

for ((i=1; i<=3; i++))
do
echo
done
clear
case $choice in 
    1) install_package python ;;
    2) install_package python2 ;;
    3) install_package python3 ;;
    4) install_package php ;;
    5) install_package ruby ;;
    6) install_package perl ;;
    7) install_package golang ;;
    8) install_package figlet ;;
    9) install_package git ;;
    10) install_package nano ;;
    11) install_package lolcat ;;
    12) install_package openssh ;;
    13) install_package wget ;;
    14) install_package curl ;;
    15) install_package nmap ;;
    16) install_package tmux ;;
    17) install_package fish ;;
    18) install_package htop ;;
    19) install_package apache ;;
    20) install_package toilet ;;
    21) install_package vim ;;
    22) install_package netcat-openbsd ;;
    23) install_package sl ;;
    24) install_package zip ;;
    25) install_package unzip ;;
    26) install_package openjdk-17 ;;
    27) install_package exiftool ;;
    28) install_package libcaca ;;
    29) install_package termimage ;;
    30) install_package w3m ;;
    31) install_package fortune ;;
    32) install_package cmatrix ;;
    33) install_package screenfetch ;;
    34) install_package tor ;;
    35) install_package tty-clock ;;
    36) install_package neofetch ;;
    37) install_package moon-buggy ;;
    38) install_package clang ;;
    39) install_package proot-distro ;;
    40) install_package termux-api ;;
    41) install_package cowsay ;;
    42) install_package oneko ;;
    43) install_package xeyes ;;
    44) install_package hollywood ;;
    45) install_package httrack ;;
    46) install_package mlocate ;;
    47) install_package neovim ;;
    48) install_package hascat ;;
    49) install_package hydra ;;
    50) install_package metasploit-framework ;;
    51) install_package sqlmap ;;
    52) install_package john ;;
    53) install_package croc ;;
    54) install_package name-that-hash ;;
    55) install_package nikto ;;
    56) install_package bmon ;;
    57) install_package zzuf ;;
    58) install_package termux-am ;;
    59) install_package termux-apt-repo ;;
    60) install_package termux-create-package ;;
    61) install_package openssh-sftp-server ;;
    62) install_package openssl-tool ;;
    63) install_package zig ;;
    64) install_package util-linux-static ;;
    65) install_package ruby-ri ;;
    66) install_package termux-gui-bash ;;
    67) install_package libxml2-python-static ;;
    68) install_package root-repo ;;
    69) install_package mautrix-whatsapp ;;
    70) install_package recode-static ;;
    71) install_package ytui-music ;;
    72) install_package mtools ;;
    73) install_package speedtest-go ;;
    74) install_package telegram-cli ;;
    75) install_package shell2http ;;
    76) install_package python-cryptography ;;
    77) install_package python-ensurepip-wheels ;;
    78) install_package mesa-vulkan-icd-swrast ;;
    79) install_package libde265-static ;;
    80) install_package pcaudiolib-static ;;
    81) install_package vulkan-loader-android ;;
    82) install_package mpg123-stati ;;
    83) install_package libcoinor-osi-static ;;
    84) install_package krb5 ;;
    85) install_package cupp ;;
    86) install_package pkg-config ;;
    87) install_package googletest ;;
    88) install_package google-drive-upload ;;
    89) install_package gnurl-static ;;
    90) install_package go-findimagedupes ;;
    91) exit ;;
    *) echo -e "${R}Invalid choice" ;;
esac
