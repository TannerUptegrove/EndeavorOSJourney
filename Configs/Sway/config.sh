### Variables
#
# Mod4 is the Windows Key. Use Mod1 for alt. 
set $mod Mod4
# Home row direction keys, like vim
set $left h
set $down j
set $up k
set $right l

# Defining default apps
set $term kitty
set $menu pgrep wofi >/dev/null 2>&1 && killall wofi || wofi --show drun
set $file_explorer nautilus
set $browser vivaldi
set $Discord discord
set $vscode code-oss
set $steam steam

# Default wallpaper (more resolutions are available in /usr/share/backgrounds/sway/)
output * bg /home/dev/Pictures/Wallpapers/RainworldRadio.png fill
output eDP-1 resolution 1920x1080 position 0,0

### Sway Customization
# Gaps
gaps inner 8px
gaps outer 2px

# Border Size
default_border pixel 1px
default_floating_border pixel 1Vpx

# Border Color Variables
set $bdr_high #B52697
set $bdr_back #820C6D
set $bdr_urge #2FC2CC

# Border Color
client.focused          $bdr_high #141216 $bdr_high $bdr_high $bdr_high 
client.focused_inactive $bdr_back #141216 $bdr_high $bdr_back $bdr_back
client.unfocused        $bdr_back #141216 $bdr_high $bdr_back $bdr_back
client.urgent           $bdr_urge #141216 $bdr_high $bdr_urge $bdr_urge

# Enables natural scrolling from the touchpad
input 1160:4122:DELL0A20:00_0488:101A_Touchpad {
    dwt enabled
    tap enabled
    natural_scroll enabled
    middle_emulation enabled
}

#Mouse Settings
input 1133:49291:Logitech_G502_HERO_Gaming_Mouse {
    dwt enabled
    tap enabled
    natural_scroll disabled
    pointer_accel -1 # set mouse sensitivity (between -1 and 1)
}

### Key bindings
#
# Basics:
#
    bindsym $mod+Return exec $term
    bindsym $mod+e exec $file_explorer
    bindsym $mod+a exec $menu
    bindsym $mod+s exec $browser
    bindsym $mod+d exec $Discord;
    bindsym $mod+c exec $vscode
    bindsym $mod+x exec steam
    bindsym $mod+q kill

    # Reload the configuration file
    bindsym $mod+Shift+c reload
#
# Moving around:
#
    # Move your focus around
    bindsym $mod+$left focus left
    bindsym $mod+$down focus down
    bindsym $mod+$up focus up
    bindsym $mod+$right focus right
    # Or use $mod+[up|down|left|right]
    bindsym $mod+Left focus left
    bindsym $mod+Down focus down
    bindsym $mod+Up focus up
    bindsym $mod+Right focus right

    # Move the focused window with the same, but add Shift
    bindsym $mod+Shift+$left move left
    bindsym $mod+Shift+$down move down
    bindsym $mod+Shift+$up move up
    bindsym $mod+Shift+$right move right
    # Ditto, with arrow keys
    bindsym $mod+Shift+Left move left
    bindsym $mod+Shift+Down move down
    bindsym $mod+Shift+Up move up
    bindsym $mod+Shift+Right move right
#
# Workspaces:
#
    # Switch to workspace
    bindsym $mod+1 workspace number 1
    bindsym $mod+2 workspace number 2
    bindsym $mod+3 workspace number 3
    bindsym $mod+4 workspace number 4
    bindsym $mod+5 workspace number 5
    bindsym $mod+6 workspace number 6
    bindsym $mod+7 workspace number 7
    bindsym $mod+8 workspace number 8
    bindsym $mod+9 workspace number 9
    bindsym $mod+0 workspace number 10
    # Move focused container to workspace
    bindsym $mod+Shift+1 move container to workspace number 1
    bindsym $mod+Shift+2 move container to workspace number 2
    bindsym $mod+Shift+3 move container to workspace number 3
    bindsym $mod+Shift+4 move container to workspace number 4
    bindsym $mod+Shift+5 move container to workspace number 5
    bindsym $mod+Shift+6 move container to workspace number 6
    bindsym $mod+Shift+7 move container to workspace number 7
    bindsym $mod+Shift+8 move container to workspace number 8
    bindsym $mod+Shift+9 move container to workspace number 9
    bindsym $mod+Shift+0 move container to workspace number 10
#
# Layout stuff:
#
    # Make the current focus fullscreen
    bindsym $mod+f fullscreen

    # Toggle the current focus between tiling and floating mode
    bindsym $mod+Shift+space floating toggle

    # Swap focus between the tiling area and the floating area
    bindsym $mod+space focus mode_toggle

    # Drag floating windows by holding down $mod and left mouse button.
    floating_modifier $mod normal
#
# Scratchpad:
#
    # Sway has a "scratchpad", which is a bag of holding for windows.
    # You can send windows there and get them back later.

    # Move the currently focused window to the scratchpad
    bindsym $mod+Shift+minus move scratchpad

    # Show the next scratchpad window or hide the focused scratchpad window.
    # If there are multiple scratchpad windows, this command cycles through them.
    bindsym $mod+minus scratchpad show
#
# Utilities:
#
    # Special keys to adjust volume via PulseAudio
    bindsym XF86AudioMute exec pactl set-sink-mute \@DEFAULT_SINK@ toggle
    bindsym XF86AudioLowerVolume exec pactl set-sink-volume \@DEFAULT_SINK@ -5%
    #bindsym XF86AudioRaiseVolume exec pactl set-sink-volume \@DEFAULT_SINK@ +5%

    #Will run an bash script that will check if the volume is 100%, if it isn't, then the volume will be raised.
    bindsym XF86AudioRaiseVolume exec .config/custom-bash-scripts/volumeFixer.sh
    bindsym XF86AudioMicMute exec pactl set-source-mute \@DEFAULT_SOURCE@ toggle

    # Special keys to adjust brightness via brightnessctl
    bindsym --locked XF86MonBrightnessDown exec brightnessctl set 5%-
    bindsym --locked XF86MonBrightnessUp exec brightnessctl set 5%+
    # Special key to take a screenshot with grim
    bindsym Print exec grim

#
# Status Bar:
#
# Read `man 5 sway-bar` for more information about this section.
bar {
    swaybar_command waybar
}


include /etc/sway/config.d/*