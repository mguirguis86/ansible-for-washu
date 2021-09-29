#!/bin/bash
# Input a date (MMDD) and time (00:00:00 AM/PM)

read -p 'Date: ' DATE
read -p 'Time: ' TIME

FILE="${DATE}_Dealer_schedule"

grep -i "$TIME" "$FILE" | awk '{ print $1,$2,$5,$6 }'
