#!/bin/sh

# Cleanup `domains.txt`.
sed -i 's/^www\.//g' domains.txt
cat -n domains.txt | sort -uk2 | sort -nk1 | cut -f2- > domains_temp.txt
mv domains_temp.txt domains.txt

# Generate uBlacklist filter.
sed 's/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist_temp.txt
cp list_info.txt domains_uBlacklist.txt
cat domains_uBlacklist_temp.txt >> domains_uBlacklist.txt
rm domains_uBlacklist_temp.txt
