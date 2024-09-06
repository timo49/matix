{ config, pkgs, ...}:

{

    services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = 300;
        offset = "20x20";
        origin = "top-right";
        transparency = 0;
        frame_color = "#${config.lib.stylix.colors.base03}";
        font = "Hack Nerd Font 9";
      };

      urgency_normal = {
        background = "#${config.lib.stylix.colors.base00}";
        foreground = "#${config.lib.stylix.colors.base05}";
        timeout = 10;
      };
    };
  };
}
