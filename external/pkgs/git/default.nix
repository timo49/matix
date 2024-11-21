{ config, pkgs, settings, ...}:

{
  home-manager.sharedModules = [{

    # git config
    programs.git = {
      enable = true;
      userName = settings.gitUser;
      userEmail = settings.gitMail;
      extraConfig = {
        init.defaultBranch = settings.defaultBranch;
      };
    };
  }];
}
