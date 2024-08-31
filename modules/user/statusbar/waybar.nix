{ config, pkgs, ...}:

{
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
    }

    window#waybar {
      background: #16191C;
      color: #AAB2BF;
    }

    #workspaces button {
      padding: 0 5px;
    }
  '';

  # Configuration
  home.file.".config/waybar/config.jsonc".text = ''
    {
      "layer": "top",
      "position": "top",

      "modules-left": [
	"hyprland/workspaces",
        "hyprland/mode"
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
