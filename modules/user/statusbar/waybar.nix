{ config, pkgs, ...}:

{
  imports = [
    ../../common/theme.nix
  ];

  programs.waybar = {
    enable = true;
    # style = ../../dotfiles/statusbar/waybar/style.css;
    # settings = ../../dotfiles/statusbar/waybar/config.jsonc;
  };
  
  # Cascading Style Sheet
  home.file.".config/waybar/style.css".text = ''
    * {
      border: none;
      border-radius: 0;
      font-family: Source Code Pro;
      color: #${config.colorScheme.palette.base05};
    }

    tooltip {
      background: #${config.colorScheme.palette.base00};
      border: 1px solid #${config.colorScheme.palette.base03};
    }

    window#waybar {
      background: #${config.colorScheme.palette.base00};
      color: #${config.colorScheme.palette.base05};
    }

    #workspaces button {
      padding: 0 5px;
    }

    #workspaces button.focused {
      background: #${config.colorScheme.palette.base05};
      color: #${config.colorScheme.palette.base00};
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
