#/bin/bash

while true; do
    while read v; do
        timestamp=$(date -u "+%Y-%m-%dT%H:%M:%S.000Z")
        temperature_celsius="$(smartctl -A $v | grep 'Temperature_Celsius' | awk '{print $10}')"
        jo "sender"="disk_smart" "type"="temperature_celsius" "timestamp"="$timestamp" "disk_path"="$v" "temperature_celsius"="$temperature_celsius" |tee -a "log/disk_smart.log"
    done < ./.disks
    sleep 300
done
