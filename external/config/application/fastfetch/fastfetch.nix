{ config, pkgs, ...}:
let
  vars = import ../../../../core/system/variables.nix;
in
{

  environment.systemPackages = with pkgs; [
    fastfetch
  ];

  home-manager.sharedModules = [{
    home.file.".config/fastfetch/config.jsonc".text = ''
      {
          "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
          "modules": [
              "title",
              "separator",
              "module1",
              {
                  "type": "module2",
                  "module2-option": "value"
              }
          ]
      }
    '';
  }];
}
