{ config, pkgs, ...}:

let
  vars = import ./variables.nix;
in {
 # git config
  programs.git = {
    enable = true;
    userName = vars.gitUser;
    userEmail = vars.gitMail;
    extraConfig = {
      init.defaultBranch = vars.defaultBranch;
    };
  };
}