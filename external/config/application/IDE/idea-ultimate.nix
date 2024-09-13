{ config, pkgs, ...}:

{
  enivornment.systemPackages = with pkgs; [
    idea-ultimate
  ];
}
