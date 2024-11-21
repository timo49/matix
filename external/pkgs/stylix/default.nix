{ pkgs, settings, ...}:

{
  environment.systemPackages = with pkgs; [
    base16-schemes
  ];

  stylix = {
    enable = true;
    autoEnable = false;
    image = /home/${settings.username}/.modular-nixos-configuration/external/theme/wallpaper/${settings.wallpaper};
    polarity = "${settings.polarity}";
     
    opacity = {
      applications = "${settings.opacity}";
      desktop = "${settings.opacity}";
      popups = "${settings.opacity}";
      terminal = "${settings.opacity}";
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/${settings.colorScheme}.yaml";

  };

  home-manager.sharedModules = [{
    stylix = {
      enable = true;
      autoEnable = false;
      image = /home/${settings.username}/.modular-nixos-configuration/external/theme/wallpaper/${settings.wallpaper};
      polarity = "${settings.polarity}";
      
      opacity = {
        applications = "${settings.opacity}";
        desktop = "${settings.opacity}";
        popups = "${settings.opacity}";
        terminal = "${settings.opacity}";
      };
      
      targets = {
        kde.enable = true;
        gnome.enable = true;
        gtk.enable = true;

        vesktop.enable = true;
        fish.enable = true;
        neovim.enable = true;

      };

      base16Scheme = "${pkgs.base16-schemes}/share/themes/${settings.colorScheme}.yaml";

    };
  }];
}
