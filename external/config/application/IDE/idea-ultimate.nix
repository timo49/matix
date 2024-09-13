{ config, pkgs, ...}:

{
  enivornment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
  ];
}
