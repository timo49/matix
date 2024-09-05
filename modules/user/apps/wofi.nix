{ config, pkgs, ... }:

{
  imports = [
    ../../common/theme.nix
  ];

  programs.wofi = {
    enable = true;

    settings = {
      hide_scoll = true;
      allow_markup = true;
    };

    style  = 
    let
      vars = import ../../common/variables.nix;
    in ''
      * {
        font-family: Hack Nerd Font;
	      color: #${config.colorScheme.palette.base05};
	      border: none;
      }

      #window {
        background: rgba(${vars.rgb}, ${vars.opacity});
	      border: 2px solid #${config.colorScheme.palette.base03};
      }

      #outer-box {
	      border: 2px solid #${config.colorScheme.palette.base03};
      }

      #input {
        background: #${config.colorScheme.palette.base00};
	      border: none;
      }

      #entry:selected {
        background: #${config.colorScheme.palette.base03};
	      color: #${config.colorScheme.palette.base04}:
	      border: none;
      }
    '';
  };
}
