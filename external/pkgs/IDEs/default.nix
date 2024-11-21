{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    # JAVA
    jetbrains.idea-ultimate
    openjfx17
    jdk8
    glib
    
    # HTML / CSS / JS / PHP
    jetbrains.webstorm
    php
    
    # RUST
    jetbrains.rust-rover
    gccgo14
  ];
}
