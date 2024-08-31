{ config, pkgs, ...}:

{
  imports = [
    # Profile
    ./profiles/home-manager/laptop.nix
  ];
}
