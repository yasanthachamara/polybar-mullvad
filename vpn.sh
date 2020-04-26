#!/bin/sh
vpn_connected=$(mullvad status | grep 'Connected to' | awk '{print $3}')

if [  "$vpn_connected" == "Connected" ]; then
		echo "$(mullvad status | awk '{print$7}' | cut -d ':' -f 1)"
else
		echo "Not Connected"
fi
