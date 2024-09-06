{ pkgs, ...}:

let
  vars = import ../common/variables.nix;
in
{
  stylix = {
    enable = true;
    autoEnable = false;

    image = /home/${vars.username}/${vars.wallpaperPath};
  };
}
