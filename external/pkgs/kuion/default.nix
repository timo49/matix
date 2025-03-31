{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    krita
    dia
    linuxKernel.packages.linux_6_6.digimend # while option doesn't work
  ];
  # services.xserver.digimend.enable = true; # currently not working
}
