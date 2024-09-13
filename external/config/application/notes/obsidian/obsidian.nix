{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian
  ];

  home-manager.sharedModules = [{
    
    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/theme.css".text = ''
      body {
        --background-primary: #${config.lib.stylix.colors.base00};
        --background-secondary: #${config.lib.stylix.colors.base00};
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

    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/package.json".text = ''
      {
        "name": "matteos-theme",
        "version": "1.0.0",
        "scripts": {
          "version": "node version-bump.mjs && git add manifest.json versions.json"
        }
      }
    '';

    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/version-bump.mjs".text = ''
      import { readFileSync, writeFileSync } from "fs";

      const targetVersion = process.env.npm_package_version;

      // read minAppVersion from manifest.json and bump version to target version
      let manifest = JSON.parse(readFileSync("manifest.json", "utf8"));
      const { minAppVersion } = manifest;
      manifest.version = targetVersion;
      writeFileSync("manifest.json", JSON.stringify(manifest, null, "\t"));

      // update versions.json with target version and minAppVersion from manifest.json
      let versions = JSON.parse(readFileSync("versions.json", "utf8"));
      versions[targetVersion] = minAppVersion;
      writeFileSync("versions.json", JSON.stringify(versions, null, "\t"));
    '';

    home.file."Documents/Obsidian-Vault/.obsidian/themes/matteos-theme/versions.json".text = ''
      {
	      "1.0.0": "1.0.0"
      }⏎
    '';
  }];
}
