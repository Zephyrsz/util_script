curl cip.cc >  curl.txt

ip=`cat curl.txt  | grep  IP | awk -F: '{print $2}' |sed -e 's/^[ ]*//g' | sed -e 's/[ ]*$//g'  `
ipOld=`cat ip.txt`

if [ "$ip" != "$ipOld" ];then
echo $ip > ip.txt
echo "mail newIP"
fi
