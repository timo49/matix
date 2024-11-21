{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rofi-wayland
  ];

  home-manager.sharedModules = [{
    home.file.".config/rofi/config.rasi".text = ''
      configuration { 
        modes: "window,run,ssh,drun";
        font: "mono 12";
        show-icons: true;
        location: 0;
        yoffset: 0;
        xoffset: 0;
        fixed-num-lines: true;
        ml-row-down: "ScrollDown";
        me-select-entry: "MousePrimary";
        me-accept-entry: "MouseDPrimary";
        me-accept-custom: "Control+MouseDPrimary";
      }
    '';
  }];
}
