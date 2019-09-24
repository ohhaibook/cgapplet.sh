globalFunctions="/home/ohhaibook/custom/cyberghost/cgapplet-global.sh"
. $globalFunctions

installDir="/home/ohhaibook/custom/cyberghost"
#realipfile="$installDir/cyberghost-settings"

ipaddress=$(dig @resolver1.opendns.com ANY myip.opendns.com +short)

clickConnect="<txtclick>$installDir/cyberghostvpn-connect.sh</txtclick>"
clickDisconnect="<txtclick>$installDir/cyberghostvpn-connect.sh disconnect</txtclick>"

if cyberghostvpn --status | grep -q 'No'; then
  modifySetting "realip" "$ipaddress"
  #if [ -f "$realipfile" ]; then 
    #sed -i "s/realip=.*/realip=$ipaddress/" $realipfile
    #echo "realip=\"$ipaddress\"" > "$realipfile"
  #fi
  echo "<tool>IP address: $ipaddress\nNot currently connected to VPN</tool>$clickConnect<txt><span weight=\"regular\" fgcolor=\"#CD5C5C\">Exposed</span></txt>"
else
  getSettings
  if [ "$ipaddress" = "$realip" ]; then
    echo "<tool>IP address: $ipaddress\nConnecting to VPN ($triggerCountry, $triggerCity)</tool>$clickDisconnect<txt><span weight=\"regular\" fgcolor=\"#1E90FF\">Connecting...</span></txt>"
  else
    echo "<tool>Real IP address: $realip\nIP address: $ipaddress\nConnected to: $triggerCountry, $triggerCity\nSecured with VPN!</tool>$clickDisconnect<txt><span weight=\"regular\" fgcolor=\"Light Green\">Secured</span></txt>"
  fi
fi