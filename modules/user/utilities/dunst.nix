{ config, pkgs, ...}:

{
  imports = [
    ../../common/theme.nix
  ];

    services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = 300;
        offset = "20x20";
        origin = "top-right";
        transparency = 0;
        frame_color = "#${config.colorScheme.palette.base03}";
        font = "Hack Nerd Font 9";
      };

      urgency_normal = {
        background = "#${config.colorScheme.palette.base00}";
        foreground = "#${config.colorScheme.palette.base05}";
        timeout = 10;
      };
    };
  };
}
