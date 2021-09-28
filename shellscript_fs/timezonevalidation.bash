#! /bin/bash
read -p "Enter the TIMEZONE:" TIMEZONE
VALIDTZ=$(ls -l /usr/share/zoneinfo/$TIMEZONE 2>/dev/null | awk '{print $9}' | cut -d"/" -f5,6)
if [ "$TIMEZONE" ==  "$VALIDTZ" ]
then
echo "The Entered TIMEZONE is VALID - $TIMEZONE"
else
echo "The Entered TIMEZONE is INVALID - $TIMEZONE"
fi
