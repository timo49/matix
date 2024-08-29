{ config, pkgs, ...}:

{
  imports = [
    # Profile
    ./home-profiles/laptop.nix
  ];
}
