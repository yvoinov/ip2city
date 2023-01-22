#!/sbin/sh

# OS utilities
ECHO=`which echo`

# Check $ORACLE_HOME environment variable
if [ "x$ORACLE_HOME" = "x" ]; then
 $ECHO "ORACLE_HOME environment variable not set!"
 $ECHO "Exiting ..."
 exit 1
fi

# Debug truncate table
#sqlplus /nolog <<EOT
#connect ip2city_own
#truncate table ip2city_location;
#EOT

$ECHO "--------------------------------------"
$ECHO "Regions/Cities/Countries data loading."
$ECHO "--------------------------------------"
$ECHO "Input schema owner password:"

# Then load location data
sqlldr userid=ip2city_own control=ip2city_loc.ctl skip=2 rows=5000 silent=header
