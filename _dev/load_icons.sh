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
#truncate table ip2city_country_icons;
#EOT

$ECHO "----------------------------"
$ECHO "Country flags icons loading."
$ECHO "----------------------------"
$ECHO "Input schema owner password:"

# Then load icons data
sqlldr userid=ip2city_own control=ip2city_icons.ctl rows=5 silent=header
