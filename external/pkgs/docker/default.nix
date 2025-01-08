{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  users.users.timo.extraGroups = [ "docker" ];
}
