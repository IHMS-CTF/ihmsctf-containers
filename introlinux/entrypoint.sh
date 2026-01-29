#!/bin/bash
set -e

if [ -n "$FLAG" ]; then
  echo "$FLAG" > /home/ihms/flag.txt
  unset FLAG
fi

exec ttyd --writeable bash
