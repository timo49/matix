{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    # JAVA
    jetbrains.idea-ultimate
    scenebuilder
    
    # HTML / CSS / JS / PHP
    # jetbrains.webstorm
    # jetbrains.phpstorm
    # php
    
    # RUST
    # jetbrains.rust-rover
    # gccgo14
  ];

  programs.java = {
    enable = true;
    package = (pkgs.jdk21.override { enableJavaFX = true; });
  };
}
