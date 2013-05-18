#This script gets the XC8 command line arguments and save them for further usage.

while [ $# -gt 0 ] 
do
#We are qouting arguments with space inside.
any_spaces=`expr "$1" : '.*[ ]'`

if [ "$any_spaces" -eq 0 ] ; then
    echo -n "$1 "
else
    echo -n "\"$1\" "
fi
shift
done
echo
