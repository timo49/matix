{ config, pkgs, ... }:

{
  imports = [
    # Profile
    ./profiles/laptop.nix
  ];
}