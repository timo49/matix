{ config, pkgs, ...}:

let
  vars = import ../../../core/system/variables.nix;
in {

  home-manager.sharedModules = [{

    # git config
    programs.git = {
      enable = true;
      userName = vars.gitUser;
      userEmail = vars.gitMail;
      extraConfig = {
        init.defaultBranch = vars.defaultBranch;
      };
    };
  }];
}
