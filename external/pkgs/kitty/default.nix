{ config, pkgs, settings, ...}:

{
  environment.systemPackages = with pkgs; [
    kitty
  ];

  home-manager.sharedModules = [{
    programs.kitty = {
      enable = true;

      settings = {
        foreground = "#${config.lib.stylix.colors.base05}";
        background = "#${config.lib.stylix.colors.base00}";
      };

      extraConfig = ''
        background_blur 0
        background_opacity ${settings.opacity}
        font_family family = "Hack Nerd Font"
        font_size 15
        shell fish
        confirm_os_window_close 0
      '';
    };
  }];
}
