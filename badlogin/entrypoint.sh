#!/bin/sh

# Write flag once
if [ -n "$FLAG" ]; then
  echo "$FLAG" > /app/flag.txt
  unset FLAG
fi

# Start the app
exec python /app/app.py
