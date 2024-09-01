{ config, pkgs, ... }:

{
  imports = [
    ../../common/theme.nix
  ];

  programs.starship = {
    enable = true;
  };
  
  home.file.".config/starship.toml".text = ''
    format = """\
    [](bg:#${config.colorScheme.palette.base00} fg:#${config.colorScheme.palette.base01})\
    [ ](bg:#${config.colorScheme.palette.base01} fg:#${config.colorScheme.palette.base05})\
    [](fg:#${config.colorScheme.palette.base01} bg:#${config.colorScheme.palette.base02})\
    $time\
    [](fg:#${config.colorScheme.palette.base02} bg:#${config.colorScheme.palette.base03})\
    $directory\
    [](fg:#${config.colorScheme.palette.base03} bg:#${config.colorScheme.palette.base04})\
    $git_branch\
    $git_status\
    $git_metrics\
    [](fg:#${config.colorScheme.palette.base04} bg:#${config.colorScheme.palette.base00})\
    $character\
    """
    
    [directory]
    format = "[  $path ]($style)"
    style = "fg:#${config.colorScheme.palette.base05} bg:#${config.colorScheme.palette.base03}"

    [git_branch]
    format = '[ $symbol$branch(:$remote_branch) ]($style)'
    symbol = "  "
    style = "fg:#${config.colorScheme.palette.base00} bg:#${config.colorScheme.palette.base04}"

    [git_status]
    format = '[$all_status]($style)'
    style = "fg:#${config.colorScheme.palette.base00} bg:#${config.colorScheme.palette.base04}"

    [git_metrics]
    format = "([+$added]($added_style))[]($added_style)"
    added_style = "fg:#${config.colorScheme.palette.base00} bg:#${config.colorScheme.palette.base04}"
    deleted_style = "fg:#${config.colorScheme.palette.base00} bg:#${config.colorScheme.palette.base04}"
    disabled = false

    [hg_branch]
    format = "[ $symbol$branch ]($style)"
    symbol = " "
    style = "fg:#${config.colorScheme.palette.base00} bg:#${config.colorScheme.palette.base04}"
    
    [cmd_duration]
    format = "[ 󰔚 $duration ]($style)"
    style = "fg:#${config.colorScheme.palette.base05} bg:#${config.colorScheme.palette.base00}"
    
    [character]
    success_symbol = '[ ➜](fg:#${config.colorScheme.palette.base0B}) '
    error_symbol = '[ ✗](fg:#${config.colorScheme.palette.base08}) '
    
    [time]
    disabled = false
    time_format = "%R" # Hour:Minute Format
    style = "bg:#${config.colorScheme.palette.base02}"
    format = '[[ 󱑍 $time ](bg:#${config.colorScheme.palette.base02} fg:#${config.colorScheme.palette.base05})]($style)'
  '';
}
