{ config, pkgs, nix-colors, ... }:

let
  vars = import ./variables.nix;
in {
  imports = [
    nix-colors.homeManagerModules.default
  ];

  colorScheme = nix-colors.colorSchemes.${vars.colorScheme};

}
