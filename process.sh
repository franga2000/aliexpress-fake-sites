#!/bin/sh
sed 's/^www.//g;s/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist.txt
sort -o domains_uBlacklist.txt{,}
sed -i 'ir list_info.txt' domains_uBlacklist.txt
