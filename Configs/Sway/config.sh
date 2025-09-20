# Includes the default configuration for sway.
include /etc/sway/config.d/*

# ========== Variables ================================================
# Mod 4 is the Windows key - used to activate the sway keybinds.
set $mod Mod4

# Default apps saved into variables.
set $term kitty
set $menu pgrep rofi >/dev/null 2>&1 && killall rofi || rofi -show drun
set $file_explorer nautilus
set $browser vivaldi
# =====================================================================



# ========== Background Configuration =================================
# Use the command "swaymsg -t get_outputs" to get the monitor name.
output eDP-1 resolution 1920x1080 position 0,0
output * bg /home/dev/Pictures/Wallpapers/RainworldForest.png fill
# =====================================================================



# ========== Sway Look ================================================
gaps inner 6px
gaps outer 2px
default_border pixel 1px
default_floating_border pixel 1Vpx

# Border Colors
set $bdr_high #92a565
set $bdr_back #526b34
set $bdr_urge #30a17a
client.focused          $bdr_high #141216 $bdr_high $bdr_high $bdr_high 
client.focused_inactive $bdr_back #141216 $bdr_high $bdr_back $bdr_back
client.unfocused        $bdr_back #141216 $bdr_high $bdr_back $bdr_back
client.urgent           $bdr_urge #141216 $bdr_high $bdr_urge $bdr_urge
# =====================================================================



# ========== Mouse Configurations =====================================
# These configure both the touchpad and my mouse.

input 1160:4122:DELL0A20:00_0488:101A_Touchpad {
  dwt enabled                # This enables "disabled while typing"
  tap enabled                # Enables tap clicking
  natural_scroll enabled     # Enables inverted scrolling.
  middle_emulation enabled
}

input 1133:49291:Logitech_G502_HERO_Gaming_Mouse {
  dwt enabled
  natural_scroll disabled
  pointer_accel -0.7  # Sets the sensitivity (can be between -1 and 1).
}
# =====================================================================


# ========== Key Bindings =============================================
# Reloads the system.
bindsym $mod+Shift+c reload

# Opens the default apps.
bindsym $mod+Return exec $term
bindsym $mod+e exec $file_explorer
bindsym $mod+a exec $menu
bindsym $mod+s exec $browser
bindsym $mod+Shift+s exec $browser -incognito
bindsym $mod+d exec discord;
bindsym $mod+c exec code-oss
bindsym $mod+x exec steam
bindsym $mod+q kill
    
# Uses the sway-sceeenshot package to take sceeenshots.
bindsym $mod+k exec sway-screenshot -m output -o /home/dev/Pictures/Screenshots/

# Use to change the focus to another app if multiple are open.
bindsym $mod+Left focus left
bindsym $mod+Right focus right
bindsym $mod+Down focus down
bindsym $mod+Up focus up

# Used to change where an app is on the screen.
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# Used to switch between the workspaces.
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

# Used to move the current focused app to another workspace.
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
    
# Puts the current focused app in fullscreen.
bindsym $mod+f fullscreen

# Puts the current focused app in floating mode.
# It can then be moved around with the mouse.
bindsym $mod+Shift+space floating toggle

# Swaps focus from the tiling area to the floating area.
bindsym $mod+space focus mode_toggle

# Drags floating windows by holding down $mod and left mouse button.
floating_modifier $mod normal


# Sway has a scatchpad which can store windows.
# Used to send windows into the scratchpad.
bindsym $mod+Shift+minus move scratchpad

# Used to show the scratchpad
bindsym $mod+minus scratchpad show

# Keybinding used to adjust the audio.
bindsym XF86AudioMute exec pactl set-sink-mute \@DEFAULT_SINK@ toggle
bindsym XF86AudioLowerVolume exec pactl set-sink-volume \@DEFAULT_SINK@ -5%
bindsym XF86AudioRaiseVolume exec .config/sway/volumeFixer.sh #Will run the VolumeFixer script.
bindsym XF86AudioMicMute exec pactl set-source-mute \@DEFAULT_SOURCE@ toggle

# Keybindings used to adjust the brightness.
bindsym --locked XF86MonBrightnessDown exec brightnessctl set 10%-
bindsym --locked XF86MonBrightnessUp exec brightnessctl set 10%+
# =====================================================================


# ========== Taskbar ==================================================
# Used to put a waybar taskbar on sway
bar {
    swaybar_command waybar
}
# =====================================================================