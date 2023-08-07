#!/bin/sh
sed 's/^www.//g;s/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist.txt
sort -o domains_uBlacklist.txt{,}
cat list_info.txt domains_uBlacklist.txt >out && mv out domains_uBlacklist.txt
