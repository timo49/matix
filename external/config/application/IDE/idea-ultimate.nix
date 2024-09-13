{ config, pkgs, ...}:

{
  enviornment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
  ];
}
