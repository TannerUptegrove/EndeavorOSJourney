{
    "layer": "bot",
    "position": "top",
    "spacing": 5,
    "height": 0,

    "modules-left": [ "clock", "cpu", "memory", "network" ],
    "modules-center": [ "sway/workspaces" ],
    "modules-right": [ "pulseaudio", "battery", "custom/power"],

    "sway/workspaces": {
        "format": "",
        "persistent-workspaces": {
            "1": [],
            "2": [],
            "3": [],
            "4": []
        },

        "disable-scroll": true,
        "disable-click": false,
        "tooltip": false
    },

    "clock": {
        "format": "{:%I:%M %D}",
        "tooltip": false
    },

    "cpu": {
        "format": "CPU: {usage}%",
        "tooltip": false
    },

    "memory": {
        "format": "RAM: {}%",
        "tooltip": false
    },

    "network": {
        "format": "NET: {bandwidthTotalBits}",
        "format-disconnected": "No Network",
        "interval": 5,
        "on-click": "exec nm-connection-editor",
        "tooltip": false
    },

    "pulseaudio": {
        "scroll-step": 1,
        "format": "VOL: {volume}%",
        "format-muted": "VOL: Mute",
        "nospacing": 1,
        "on-click": "pavucontrol",
        "tooltip": false
    },

    "battery": {
        "states": {
            "warning": 15,
            "critical": 10
        },

        "interval": 1,
        "format": "BAT: {capacity}%",
        "format-alt": "BAT: {time}",
        "tooltip": false
    },

    "custom/power": {
        "format": "",
        "on-click": "pgrep eww && killall eww || bash ~/.config/eww/Scripts/powerMenu.sh",
        "tool-tip": false
    }
}
