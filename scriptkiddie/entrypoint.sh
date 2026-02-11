#!/bin/bash
set -e

if [ -n "$FLAG" ]; then
  echo "$FLAG" > /root/flag.txt
  unset FLAG
fi

exec ttyd --writable bash
