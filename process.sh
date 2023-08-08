#!/bin/sh
sed -i 's/^www.//g' domains.txt
sed 's/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist.txt
cat list_info.txt domains_uBlacklist.txt >out && mv out domains_uBlacklist.txt
