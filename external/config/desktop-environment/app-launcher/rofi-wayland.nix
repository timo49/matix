{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rofi-wayland
  ];

  home-manager.sharedModules = [{
    home.file.".config/rofi/config.rasi".text = ''
      configuration {               
      /*  modes: "window,run,ssh,drun";*/
      /*  font: "mono 12";*/
      /*  location: 0;*/
      /*  yoffset: 0;*/
      /*  xoffset: 0;*/
      /*  fixed-num-lines: true;*/
      ... cut ...
      /*  ml-row-down: "ScrollDown";*/                                                                                        
      /*  me-select-entry: "MousePrimary";*/                                                                                  
      /*  me-accept-entry: "MouseDPrimary";*/                                                                                 
      /*  me-accept-custom: "Control+MouseDPrimary";*/ 
      }
    '';
  }];
}
