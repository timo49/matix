{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    logseq
  ];
}
