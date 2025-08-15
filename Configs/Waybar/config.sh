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
    "modules-right": [ "pulseaudio", "battery", "custom/clock" ],

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
        "scroll-step": 5,
        "max-volume": 150,
        "format": "{icon} {volume}%",
        "format-bluetooth": "{icon} {volume}%",
        "format-icons": [ "", "", " " ],
        "nospacing": 5,
        "format-muted": " ",
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

    "custom/clock": {
        "exec": "date +\"%-I:%M %p\"",
        "interval": 1,
        "tooltip": false
    }
}