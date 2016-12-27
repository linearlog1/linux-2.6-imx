export LANGUAGE="en_US.UTF-8" 
export LANG=C
export USE_CCACHE=1

clear 
rm -rf search.log
echo     "parameter1:"$1 
echo     "parameter2:"$2 
.o.cmd
if [ "${1}" == "-f" ] ; then

echo "Find $2"
find ./ -iname "$2"

else

if [ "${2}" == "" ] ; then
echo "Find string 1"
ls | grep "$1" ./ -nR --exclude-dir=.repo --exclude-dir=.git --exclude-dir=out --exclude-dir=prebuilts --exclude=*.tmp --exclude=*.map --exclude=*.cmd --exclude=*.o.cmd
else
echo "Find string 2"
ls | grep "$1" ./ -nR --include="$2" --exclude-dir=.repo --exclude-dir=.git --exclude-dir=out --exclude-dir=prebuilts --exclude=*.tmp --exclude=*.map --exclude=*.cmd --exclude=*.o.cmd
fi

fi



