#!/bin/bash

R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
PU="\033[1;34m"
PI="\033[1;35m"
B="\033[1;36m"
W="\033[1;37m"
BL="\033[1;30m"
Purple="\e[38;5;93m"
uninstall_package() {
    local package_name="$1"
    echo -e "${G}Uninstalling $package_name..."
    if [[ $DISTRO = "termux" ]]; then
        pkg uninstall -y $package_name
    elif [[ $DISTRO == "ubuntu" || $DISTRO == "kali" ]]; then
        sudo apt-get remove -y $package_name
    else
        echo -e "${R}Unsupported Distribution."
        exit 1
    fi
	for ((i=1; i<=3; i++))
	do
	echo
	done
    echo -e "${R}Uninstalled package $package_name."
    sleep 1
}
Banner() {
echo -e "\033[1;32m"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠈⠻⢿⠿⠋⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⠿⠿⠿⠿⠿⠟⠛⠉⠁⠀⠀⠉⠙⠛⠛⠛⠛⢛⣛⣉⣁⣀⣈⣉⣙⣛⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠼⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⠿⠶⠶⣶⡶⣶⣴⣤⣤⣤⣤⣤⣤⣶⣶⣶⡶⠶⠿⢿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⡿⠋⠁⠀⠀⠀⠹⣆⡀⠀⠀⣠⣶⣶⣄⠀⠀⢀⣾⡇⠀⠀⠀⠈⠻⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣯⣤⣄⣀⣀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⢀⣀⣀⣤⣤⣽⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⠀⠙⢿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣥⣀⡀⠀⠀⠀⠙⢿⣿⣿⠏⠀⠀⠀⠀⣀⣠⣽⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣄⡀⠀⣸⠃⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡏⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo -e "\t\t⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo
}
if [ -f /data/data/com.termux/files/usr/bin/apt ]; then
    DISTRO="termux"
elif [ -f /usr/bin/apt ]; then
    DISTRO="ubuntu"
elif [ -f /usr/bin/apt-get ]; then
    DISTRO="kali"
else
    echo -e "${R}Unsupported distro."
    exit 1
fi
clear
for ((i=1; i<=5; i++))
do
echo
done
Banner
echo -e "\t⭕ ${Purple}This Script will uninstall Package in Linux Package Manager ⭕\n\n"
echo -e "\t\t\t${PI}Code ${W}By ${B}Manjunath\n\n"
echo -e "\t${Y}1.  ${G}Python\n"
echo -e "\t${Y}2.  ${G}Python2\n"
echo -e "\t${Y}3.  ${G}Python3\n"
echo -e "\t${Y}4.  ${G}PHP\n"
echo -e "\t${Y}5.  ${G}Ruby\n"
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
echo -e "\t${Y}36. ${G}neofetce\n"
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
echo -e "\t\a${Y}91. ${G}Exit-Script\n\n"
echo -e "\033[1;35m"
read -p "Enter The Number : " Un
for ((i=1; i<=5; i++))
do
echo
done
clear
case $Un in
    1) uninstall_package python ;;
    2) uninstall_package python2 ;;
    3) uninstall_package python3 ;;
    4) uninstall_package php ;;
    5) uninstall_package ruby ;;
    6) uninstall_package perl ;;
    7) uninstall_package golang ;;
    8) uninstall_package figlet ;;
    9) uninstall_package git ;;
    10) uninstall_package nano ;;
    11) uninstall_package lolcat ;;
    12) uninstall_package openssh ;;
    13) uninstall_package wget ;;
    14) uninstall_package curl ;;
    15) uninstall_package nmap ;;
    16) uninstall_package tmux ;;
    17) uninstall_package fish ;;
    18) uninstall_package htop ;;
    19) uninstall_package apache ;;
    20) uninstall_package toilet ;;
    21) uninstall_package vim ;;
    22) uninstall_package netcat-openbsd ;;
    23) uninstall_package sl ;;
    24) uninstall_package zip ;;
    25) uninstall_package unzip ;;
    26) uninstall_package openjdk-17 ;;
    27) uninstall_package exiftool ;;
    28) uninstall_package libcaca ;;
    29) uninstall_package termimage ;;
    30) uninstall_package w3m ;;
    31) uninstall_package fortune ;;
    32) uninstall_package cmatrix ;;
    33) uninstall_package screenfetch ;;
    34) uninstall_package tor ;;
    35) uninstall_package tty-clock ;;
    36) uninstall_package neofetch ;;
    37) uninstall_package moon-buggy ;;
    38) uninstall_package clang ;;
    39) uninstall_package proot-distro ;;
    40) uninstall_package termux-api ;;
    41) uninstall_package cowsay ;;
    42) uninstall_package oneko ;;
    43) uninstall_package xeyes ;;
    44) uninstall_package hollywood ;;
    45) uninstall_package httrack ;;
    46) uninstall_package mlocate ;;
    47) uninstall_package neovim ;;
    48) uninstall_package hascat ;;
    49) uninstall_package hydra ;;
    50) uninstall_package metasploit-framework ;;
    51) uninstall_package sqlmap ;;
    52) uninstall_package john ;;
    53) uninstall_package croc ;;
    54) uninstall_package name-that-hash ;;
    55) uninstall_package nikto ;;
    56) uninstall_package bmon ;;
    57) uninstall_package zzuf ;;
    58) uninstall_package termux-am ;;
    59) uninstall_package termux-apt-repo ;;
    60) uninstall_package termux-create-package ;;
    61) uninstall_package openssh-sftp-server ;;
    62) uninstall_package openssl-tool ;;
    63) uninstall_package zig ;;
    64) uninstall_package util-linux-static ;;
    65) uninstall_package ruby-ri ;;
    66) uninstall_package termux-gui-bash ;;
    67) uninstall_package libxml2-python-static ;;
    68) uninstall_package root-repo ;;
    69) uninstall_package mautrix-whatsapp ;;
    70) uninstall_package recode-static ;;
    71) uninstall_package ytui-music ;;
    72) uninstall_package mtools ;;
    73) uninstall_package speedtest-go ;;
    74) uninstall_package telegram-cli ;;
    75) uninstall_package shell2http ;;
    76) uninstall_package python-cryptography ;;
    77) uninstall_package python-ensurepip-wheels ;;
    78) uninstall_package mesa-vulkan-icd-swrast ;;
    79) uninstall_package libde265-static ;;
    80) uninstall_package pcaudiolib-static ;;
    81) uninstall_package vulkan-loader-android ;;
    82) uninstall_package mpg123-stati ;;
    83) uninstall_package libcoinor-osi-static ;;
    84) uninstall_package krb5 ;;
    85) uninstall_package cupp ;;
    86) uninstall_package pkg-config ;;
    87) uninstall_package googletest ;;
    88) uninstall_package google-drive-upload ;;
    89) uninstall_package gnurl-static ;;
    90) uninstall_package go-findimagedupes ;;
    91) exit ;;
    *)
        echo -e "${R}Invalid option."
        ;;
esac 
