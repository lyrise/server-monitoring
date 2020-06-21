while true; do
    for v in $(lshw -short | grep disk | awk '{print $2}' | sort | uniq); do
        timestamp=$(date -u "+%Y/%m/%dT%H:%M:%SZ")
        temperature_celsius="$(smartctl -A $v | grep 'Temperature_Celsius' | awk '{print $10}')"
        jo "name"="disk_smart" "timestamp"="$timestamp" "disk_path"="$v" "temperature_celsius"="$temperature_celsius" >>"log/disk_smart.log"
    done

    sleep 300
done
