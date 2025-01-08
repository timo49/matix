{ config, pkgs, ... }:

let
  base00 = config.lib.stylix.colors.base00;
  base01 = config.lib.stylix.colors.base01;
  base02 = config.lib.stylix.colors.base02;
  base03 = config.lib.stylix.colors.base03;
  base04 = config.lib.stylix.colors.base04;
  base05 = config.lib.stylix.colors.base05;
  base08 = config.lib.stylix.colors.base08;
  base0B = config.lib.stylix.colors.base0B;
in
{

  environment.systemPackages = with pkgs; [
    starship
  ];

  home-manager.sharedModules = [{
    programs.starship = {
      enable = true;
    };

    home.file.".config/starship.toml".text = ''
      format = """\
      [](bg:#${base00} fg:#${base04})\
      [ ](bg:#${base04} fg:#${base00})\
      [](fg:#${base04} bg:#${base03})\
      $time\
      [](fg:#${base03} bg:#${base02})\
      $directory\
      [](fg:#${base02} bg:#${base01})\
      $git_branch\
      $git_status\
      $git_metrics\
      [](fg:#${base01} bg:#${base00})\
      $character\
      """
      
      [directory]
      format = "[  $path ]($style)"
      style = "fg:#${base00} bg:#${base02}"

      [git_branch]
      format = '[ $symbol$branch(:$remote_branch) ]($style)'
      symbol = "  "
      style = "fg:#${base05} bg:#${base01}"

      [git_status]
      format = '[$all_status]($style)'
      style = "fg:#${base05} bg:#${base01}"

      [git_metrics]
      format = "([+$added]($added_style))[]($added_style)"
      added_style = "fg:#${base05} bg:#${base01}"
      deleted_style = "fg:#${base05} bg:#${base01}"
      disabled = false

      [hg_branch]
      format = "[ $symbol$branch ]($style)"
      symbol = " "
      style = "fg:#${base05} bg:#${base01}"
      
      [cmd_duration]
      format = "[ 󰔚 $duration ]($style)"
      style = "fg:#${base00} bg:#${base05}"
      
      [character]
      success_symbol = '[ ➜](fg:#${base0B}) '
      error_symbol = '[ ✗](fg:#${base08}) '
      
      [time]
      disabled = false
      time_format = "%R" # Hour:Minute Format
      style = "bg:#${base03}"
      format = '[[ 󱑍 $time ](bg:#${base03} fg:#${base00})]($style)'
    '';
  }];
}
