let
  #current Themename
  current = import "${builtins.getEnv "PWD"}/users/timo/themes/currentTheme.nix";
  #Themes
  theme = import ./themes/${current.theme};
in
{
    
  # System Information
  username = "timo";
  keyMap = "at";
  
  # Theme
  colorScheme = "${theme.colorScheme}";
  polarity = "${theme.polarity}";
  opacity = "${theme.opacity}";
  rounding = "${theme.rounding}";
  borderWidth = "${theme.borderWidth}";

  # Hyprpaper (Wallpaper)
  wallpaper= "${theme.wallpaper}";# external/theme/wallpaper


  # Hyprland
  resolution = "2560x1600@60";
  terminal = "kitty";
  browser = "qutebrowser";
  fileManager = "dolphin";
  menu = "rofi";

  # Git Configuration
  gitUser = "GluttonMain";
  gitMail = "frozenkill.hd@gmail.com";
  defaultBranch = "main";
}
