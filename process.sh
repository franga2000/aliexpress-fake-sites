#!/bin/sh
sed 's/^www.//g;s/^.*$/*:\/\/*.\0\/*/g' domains.txt > domains_uBlacklist.txt
