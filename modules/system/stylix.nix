{ pkgs, ...}:

let
  vars = import ../common/variables.nix;
in
{
  stylix = {
    enable = true;
    autoEnable = false;
    
    base16Scheme = "$../../themes/${vars.colorScheme}.yaml";
    image = /home/${vars.username}/${vars.wallpaperPath};
  };
}
