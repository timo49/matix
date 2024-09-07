{ pkgs, ...}:

let
  vars = import ../../common/variables.nix;
in
{
  stylix = {
    enable = true;
    autoEnable = false;
    image = /home/${vars.username}/${vars.wallpaperPath};
    polarity = "${vars.polarity}";
     
    opacity = {
      applications = "${vars.opacity}";
      desktop = "${vars.opacity}";
      popups = "${vars.opacity}";
      terminal = "${vars.opacity}";
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/${vars.colorScheme}.yaml";

  };

  home-manager.sharedModules = [{
    stylix = {
      enable = true;
      autoEnable = false;
      image = /home/${vars.username}/${vars.wallpaperPath};
      polarity = "${vars.polarity}";

      base16Scheme = "${pkgs.base16-schemes}/share/themes/${vars.colorScheme}.yaml";

    };
  }];
}
