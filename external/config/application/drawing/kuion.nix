{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    krita
  ];
  services.xserver.digimend.enable = true;
}
