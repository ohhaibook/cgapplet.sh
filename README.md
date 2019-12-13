# cgapplet.sh

THIS PROJECT IS DEPRECATED, PLEASE SEE [THE NEW CGAPPLET PROJECT](https://github.com/ohhaibook/cgapplet)

## info
a set up shell scripts for using the cli cyberghostvpn release with buttons/gui

this project is still needs heavy work, but feel free to take a look at my scripts.

environment tested/developed on: xubuntu 18.04 de/wm: xfce4

1) add cgapplet-daemon.sh to startup

2) add launcher items to your panel (see launcher syntax)

3) install genmon and add it to panel, direct it to cgapplet-genmon-status.sh

<b>cgapplet-connect.sh syntax</b>
```
  cgapplet-connect.sh (disconnect | country) (optional: city)
  
  example: cgapplet-connect.sh de frankfurt
  
  or:      cgapplet-connect.sh us
  
  or:      cgapplet-connect.sh disconnect
  ```
