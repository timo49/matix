{ config, pkgs, ...}:

{
  imports = [
    ../../common/theme.nix
  ];

  programs.waybar = {
    enable = true;
  };
  
  # Cascading Style Sheet
  home.file.".config/waybar/style.css".text = ''
    * {
      border: none;
      border-radius: 0;
      font-family: Hack Nerd Font;
    }

    tooltip {
      background: #${config.colorScheme.palette.base00};
      border: 2px solid #${config.colorScheme.palette.base03};
    }

    window#waybar {
      background: #${config.colorScheme.palette.base00};
      color: #${config.colorScheme.palette.base05};
      border-bottom: 2px solid #${config.colorScheme.palette.base03}
    }

    #workspaces button {
      padding: 0 5px;
      background: #${config.colorScheme.palette.base00};
      color: #${config.colorScheme.palette.base05};
      border-bottom: 2px solid #${config.colorScheme.palette.base03};
    }

    #workspaces button.active {
      color: #${config.colorScheme.palette.base04};
      border-bottom: 2px solid #${config.colorScheme.palette.base04};
    }
  '';

  # Configuration
  home.file.".config/waybar/config.jsonc".text = ''
    {
      "layer": "top",
      "position": "top",

      "modules-left": [
	"hyprland/workspaces",
      ],

      "modules-center": [
	  "hyprland/window"
      ],

      "modules-right": [
	"battery",
        "clock"
      ],

      "hyprland/window": {
          "format": " {}",
          "max-length": 50
      },

      "battery": {
          "format": "{capacity}% {icon} ",
          "format-icons": ["", "", "", "", ""]
      },

      "clock": {
          "format-alt": "{:%a, %d. %b  %H:%M}"
      }
    }
  '';
}
