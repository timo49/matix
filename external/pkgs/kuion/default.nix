{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    krita
    dia
  ];
  services.xserver.digimend.enable = true;
}
