{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    hmcl
    openfx
    gamescope
  ];
  programs.java.enable = true;
  programs.gamescope.enable = true;
}
