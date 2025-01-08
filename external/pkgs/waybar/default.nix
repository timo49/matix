{ config, lib, pkgs, settings, ...}:

{

  environment.systemPackages = with pkgs; [
    waybar
  ];

  home-manager.sharedModules = [{

    programs.waybar = {
      enable = true;
    };
    
    # Cascading Style Sheet
    home.file.".config/waybar/style.css".text = ''
    * {
      border: none;
      border-radius: ${settings.rounding}px;
      font-family: Hack Nerd Font;
    }

    #battery,
    #clock,
    #wireplumber,
    #network {
      padding: 0 10px;
      margin: 0 5px;
    }

    window#waybar {
      background: rgba(${config.lib.stylix.colors.base00-rgb-r}, ${config.lib.stylix.colors.base00-rgb-g}, ${config.lib.stylix.colors.base00-rgb-b}, ${settings.opacity});
      color: #${config.lib.stylix.colors.base05};
      border: ${settings.borderWidth}px solid #${config.lib.stylix.colors.base03};
    }

    tooltip {
      background: rgba(${config.lib.stylix.colors.base00-rgb-r}, ${config.lib.stylix.colors.base00-rgb-g}, ${config.lib.stylix.colors.base00-rgb-b}, ${settings.opacity});
      border: ${settings.borderWidth}px solid #${config.lib.stylix.colors.base03};
    }

    #workspaces button {
      color: #${config.lib.stylix.colors.base05};
    }

    #workspaces button.active {
      color: #${config.lib.stylix.colors.base05};
      border-radius: ${settings.rounding}px;
      background: #${config.lib.stylix.colors.base01};
      border-top: 2px solid #${config.lib.stylix.colors.base01};
      border-bottom: 2px solid #${config.lib.stylix.colors.base01};
    }
    '';

    # Configuration
    home.file.".config/waybar/config.jsonc".text = ''
      {
        "layer": "top",
        "position": "top",
        "margin-left": 20,
        "margin-right": 20,
        "margin-top": 5,

        "modules-left": [
          "hyprland/workspaces",
        ],

        "modules-center": [
          "hyprland/window"
        ],

        "modules-right": [
          "network",
          "wireplumber",
          "battery",
          "clock"
        ],

        "hyprland/window": {
          "format": "{title}",
          "max-length": 50
        },


        "battery": {
          "format": "{icon} {capacity}%",
          "format-charging": "󰂄 {capacity}%",
          "format-icons": ["󰂃", "󰂃", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹"],
          "tooltip-format": "{time}"
        },

        "clock": {
          "format": "󱑆 {:%H:%M }",
          "format-alt": "󱑆 {:%a, %d. %b  %H:%M }",
          "tooltip": false
       },

        "wireplumber": {
          "format": "{icon} {volume}% ",
          "format-muted": "󰟎 ",
          "scroll-step": "1",
          "format-icons": ["󰋋", "󰋋", "󰋋"]
        },

        "network": {
          "interface": "wlp4s0",
          "format": "{ifname}",
          "format-wifi": "  {signalStrength}%",
          "format-ethernet": "{ipaddr}/{cidr} 󰊗 ",
          "format-disconnected": "󰖪 ", //An empty format will hide the module.
          "tooltip-format": "{ifname} via {gwaddr} 󰊗 ",
          "tooltip-format-wifi": "{essid} ({signalStrength}%)  ",
          "tooltip-format-ethernet": "{ifname}  ",
          "tooltip-format-disconnected": "Disconnected",
          "max-length": 50
        }
      }
    '';

  }];
}
