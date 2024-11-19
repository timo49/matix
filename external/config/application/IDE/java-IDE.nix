{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
    openjfx17
    jdk8
    glib

    jetbrains.webstorm
    jetbrains.phpstorm
    php
  ];
}
