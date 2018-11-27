sensors=$(sensors)
cpu_fan=$(sensors | awk '/RPM/ {print $2}')
echo "CPU Fan: $cpu_fan"

#echo $sensors
