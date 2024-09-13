{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian
  ];

  home-manager.sharedModules = [{
    
    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/theme.css".text = ''
      body {
        --background-primary: #${config.lib.stylix.colors.base00};
        --background-primary-alt: #${config.lib.stylix.colors.base00};
        --background-secondary: #${config.lib.stylix.colors.base00};
        --background-secondary-alt: #${config.lib.stylix.colors.base00};
        --background-modifier-border: #${config.lib.stylix.colors.base00};
        --ribbon-background: #${config.lib.stylix.colors.base00};
        --ribbon-background-collapsed: #${config.lib.stylix.colors.base00};
        --status-bar-background: #${config.lib.stylix.colors.base00};
        --titlebar-background: #${config.lib.stylix.colors.base00};

      }
    '';

    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/manifest.json".text = ''
      {
	      "name": "matteos-theme",
	      "version": "1.0.0",
	      "minAppVersion": "1.0.0",
	      "author": "Matteo G.",
	      "authorUrl": "https://about:blank"
      }
    '';
  }];
}
