#!/usr/bin/env bash
#
# wat.sh — continuously print 7 random numbers in green text on macOS

# If the script is killed, reset text color
trap 'tput sgr0; exit' INT TERM EXIT

# Switch to green (color code 2)
tput setaf 2

# Infinite loop
while true; do
  # Print 7 random numbers, padded for alignment
  for i in {1..25}; do
    printf "%5d " "$RANDOM"
  done
  echo   # newline
  sleep 0.1  # small delay; remove or adjust as desired
done