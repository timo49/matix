{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    spotube
  ];
}
