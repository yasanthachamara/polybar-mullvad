## Polybar module for Mullvad VPN

This is a simple polybar module to display the VPN up/down status of Mullvad

### Instructions

+ It's better to create a new **scripts** folder inside your **polybar** folder first. Makes it easier to maintain script files separately
+ Copy the [vpn.sh](https://github.com/yasanthachamara/polybar-mullvad/blob/master/vpn.sh) file to your **polybar/scripts** folder
+ Make the **vpn.sh** executable with **chmod +x vpn.sh**
+ Create the module with following guide
+ Add the module to bar

### Polybar configuration(Create the module)

+ Open your polybar config file
+ Add the following lines to include the script

```ini
[module/vpn]
type = custom/script
exec = ~/.config/polybar/scripts/vpn.sh
interval = 3
format =   <label>
format-padding = 2
label = %output%
label-foreground = #BFC7D5
format-foreground = #FFCB68
```

### Final look

<p>
<img src=".assets/vpn-connected.png" />
</p>
<p>
<img src=".assets/vpn-not-connected.png" />
</p>
