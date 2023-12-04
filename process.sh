#!/bin/sh

# Normalizes URLs in `domains.txt` into domains: lowercases, remove leading spaces, protocol (`x://`) `www.` subdomains, everything after `/`.
sed -i 's/.*/\L&/; s/^[[:space:]]*//i; s/^.*:\/\///i; s/^[.*]*//i; s/^www\.//i; s/\/.*$//i' domains.txt
cat -n domains.txt | sort -uk2 | sort -nk1 | cut -f2- > domains_temp.txt
mv domains_temp.txt domains.txt

# Generate uBlacklist filter.
sed 's/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist_temp.txt
cp list_info.txt domains_uBlacklist.txt
cat domains_uBlacklist_temp.txt >> domains_uBlacklist.txt
rm domains_uBlacklist_temp.txt
