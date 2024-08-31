{ config, pkgs, ... }:

{
  imports = [
    # Profile
    ./profiles/system/laptop.nix
  ];
}
