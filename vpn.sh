#!/bin/sh

vpn_connected=$(mullvad status | grep 'Connected to WireGuard' | awk '{print $3}')

if [  "$vpn_connected" == "Connected" ]; then
		echo "$(mullvad status | grep 'Connected to WireGuard' | awk '{print$7}' | cut -d ':' -f 1)"
else
		echo "Not Connected"
fi
