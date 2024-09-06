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
        frame_color = "#${config.stylix.base16Scheme.base03}";
        font = "Hack Nerd Font 9";
      };

      urgency_normal = {
        background = "#${config.stylix.base16Scheme.base00}";
        foreground = "#${config.stylix.base16Scheme.base05}";
        timeout = 10;
      };
    };
  };
}
