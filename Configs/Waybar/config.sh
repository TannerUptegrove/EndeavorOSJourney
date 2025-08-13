{
    "layer": "top",
    "position": "top",
    "width": 1900,
    "height": 0,
    "margin-top": 4,
    "margin-bottom": 0,
    "margin-left": 500,
    "margin-right": 500,
    "spacing": 10,
    
    "modules-left": ["network"],
    "modules-center": ["sway/workspaces"],
    "modules-right": ["clock", "battery"],

    "network": {
        "format-wifi": "{bandwidthDOwnBits}",
        "format-ethernet": "{bandwidthDOwnBits}",
        "format-disconnected": "No Network"
    },

    "sway/workspaces": {
        "format": "{icon}",
        "format-icons": {
            "default": "?",
            "active": "!"
        },

        "persistent-workspaces": {
            "*": 2
        },

        "disable-scroll": true,
        "all-outputs": true
    },

    "clock": {
        "format": "{:%A  %B %d %Y  %I:%M %p}",
        "tooltip": false
    },

    "battery": {
        "states": {
            "warning": 25,
            "critical": 10
        }
    }
}