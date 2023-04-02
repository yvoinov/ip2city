#!/sbin/sh

# Update GeoIPCity free database
# from MaxMind.com
#
# For using from cron for automatically
# GeoIPCity database monthly updates.
#
# Note: Set TARGET_DIR variable to your directory
#       with database using for SQL-updates.
#
# (C) 2009 Y.Voinov
#

# Target directory
# (change to your data directory)
TARGET_DIR="/export/home/oracle/geoip"

# Database update location
UPD_URL="http://geolite.maxmind.com/download/geoip/database/GeoLiteCity_CSV/"

# System utilities
DATE=`which date`
ECHO=`which echo`
UNZIP=`which unzip`
WGET=`which wget`

# Database ARC name
DB_NAME="GeoLiteCity_`$DATE +%Y%m01`"
#DB_NAME="GeoLiteCity_`$DATE +%Y0101`"

# Target database archive file name
# (by default GeoIP Country Lite from MaxMind)
DB_FILE_NAME_ARC="$DB_NAME.zip"

# Database file name 1
DB_FILE_NAME_1="GeoLiteCity-Blocks.csv"

# Database file name 2
DB_FILE_NAME_2="GeoLiteCity-Location.csv"

# Download source
DWNLD_SRC="$UPD_URL""$DB_FILE_NAME_ARC"

##############
# Main block #
##############

$ECHO "*** Starting update $DB_NAME Database ..."

# Downloading compressed database and save to target directory
# -N option use for update if file has been updated. 
$WGET -N -q -c -P "$TARGET_DIR" "$DWNLD_SRC" >/dev/null 2>&1

retcode=`$ECHO $?`
case "$retcode" in
 0) $ECHO "*** $DB_NAME Database downloaded successfully";;
 *) $ECHO "*** $DB_NAME Database download process has errors"
    exit 1;;
esac

# Unpack archived database file
$UNZIP -j -d "$TARGET_DIR" $DB_FILE_NAME_ARC>/dev/null 2>&1

retcode=`$ECHO $?`
case "$retcode" in
 0) $ECHO "*** $DB_NAME Database extracting successfully";;
 *) $ECHO "*** $DB_NAME Database extract process has errors"
    exit 1;;
esac

# Finally check database presence
if [ -f "$TARGET_DIR"/"$DB_FILE_NAME_1" -a -f "$TARGET_DIR"/"$DB_FILE_NAME_2" ]; then
 $ECHO "*** $DB_NAME Database update completed."
 exit 0
else
 $ECHO "*** $DB_NAME Database target file(s) not found!"
 exit 1
fi
