DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")


echo "Directory Audit Report"
echo "----------------------"


for DIR in "${DIRS[@]}"; do
   if [ -d "$DIR" ]; then
       PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
       # Use du (disk usage) to get the size of the directory in human-readable format
       SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
       echo "$DIR => Permissions: $PERMS | Size: $SIZE"
   else
       echo "$DIR does not exist"
   fi
done


CONFIG_DIR="$HOME/.mozilla"


if [ -d "$CONFIG_DIR" ]; then
   ls -ld $CONFIG_DIR
else
   echo "Firefox config directory not found"
fi
