{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    openjdk11
  ];

  services.jenkins = {
    enable = true;
    java = "${pkgs.openjdk11}/bin/java";
  };
}
