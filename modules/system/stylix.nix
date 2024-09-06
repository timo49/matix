{ pkgs, ...}:

let
  vars = import ../common/variables.nix;
in
{
  stylix = {
    enable = true;
    autoEnable = false;
    
    base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";
    image = /home/${vars.username}/${vars.wallpaperPath};
  };
}
