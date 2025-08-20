{
    "layer": "bot",
    "position": "top",
    "spacing": 5,
    "height": 0,
    "margin-top": 7,
    "margin-right": 10,
    "margin-left": 10,
    "margin-bottom": -3,

    "modules-left": [ "network" ],
    "modules-center": [ "sway/workspaces" ],
    "modules-right": [ "pulseaudio", "battery", "clock" ],

    "sway/workspaces": {
        "disable-scroll": true,
        "disable-click": false,
        "tooltip": false,

        "persistent-workspaces": {
            "1": [],
            "2": [],
            "3": [],
            "4": []
        }
    },

    "pulseaudio": {
        "scroll-step": 1,
        "max-volume": 100,
        "format": "{icon} {volume}%",
        "format-bluetooth": "{icon}",
        "format-icons": [ ""],
        


        "format-muted": "",
        "nospacing": 1,
        "on-click": "pavucontrol",
        "tooltip": false
    },

    "network": {
        "format-wifi": " {bandwidthDownBits}",
        "format-ethernet": " {bandwidthDownBits}",
        "format-disconnected": "󰤮 No Network",
        "interval": 5,
        "tooltip": false
    },

    "battery": {
        "states": {
            "warning": 15,
            "critical": 10
        },
        
        "interval": 1,
        "format": "{icon} {capacity}%",
        "format-charging": "󰂄 {capacity}%",
        "format-plugged": "󰂄 {capacity}%",
        "format-full": "󱈑 {capacity}%",
        "format-alt": "{icon} {time}",
        "format-icons": [ "󱊡", "󱊢", "󱊣" ],
        "tooltip": false
    },

    "clock": {
        "format": "󰅐 {:%I:%M %p}",
        "format-alt": "󰅐 {:%m/%d/%y}",
        "tooltip": false
    }
}