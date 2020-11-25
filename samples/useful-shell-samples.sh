# Split by line feed
printf 'Line 1\nLine 2' | awk -F'\\\\\n' '{ print $1 }'

# Backup entire /home
tar -cpzf home.backup.tar.gz --exclude=home.backup.tar.gz --exclude=.cache --exclude=.debug --exclude=Sources --warning=no-file-changed .
