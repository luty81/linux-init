#! /bin/bash

# Setting cpu governor for max performance
files=/sys/devices/system/cpu/cpufreq/policy*
declare -i cores=0


for file in $files
do
	cores=$((cores+1))
	echo 'performance' > $file/scaling_governor
	
	governor=$(cat "$file/scaling_governor")
	core=$(echo $file | awk -F/ '{ print $NF }')
	echo "Core $core set to $governor"
done
#echo "$cores cores were optimized." 

echo "Disabling ondemand daemon"
systemctl disable ondemand
echo "Done."