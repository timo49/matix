{ config, pkgs, ...}:

let
  vars = import ./variables.nix;
in {
  stylix.enable = true;

  stylix.image = ${vars.wallpaperPath};
}
