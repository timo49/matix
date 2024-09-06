{ pkgs, ...}:

let
  vars = import ../common/variables.nix;
in
{
  stylix = {
    enable = true;
    image = /home/${vars.username}/${vars.wallpaperPath};
  };
}
