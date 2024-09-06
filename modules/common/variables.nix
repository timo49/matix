{
  # System Information
  username = "matteo";
  keyMap = "at";

  # Theme
  colorScheme = "dracula";
  opacity = "0.7";
  rgb = "40, 41, 54";

  # Hyprland
  resolution = "1920x1080@60";
  terminal = "kitty";
  browser = "qutebrowser";
  fileManager = "dolphin";

  # Hyprpaper (Wallpaper)
  wallpaperPath = "~/.wallpapers/rocky-sea.png";

  # Git Configuration
  gitUser = "Permafrozen";
  gitMail = "m8tt8o@gmail.com";
  defaultBranch = "main";

  # Hex -> Rgb
  hexToRgb = hex: let
    # Remove the hash prefix if present
    hexColor = if builtins.substring 0 1 hex == "#" then builtins.substring 1 (builtins.stringLength hex - 1) hex else hex;
    r = builtins.parseInt (builtins.substring 0 2 hexColor) 16;
    g = builtins.parseInt (builtins.substring 2 2 hexColor) 16;
    b = builtins.parseInt (builtins.substring 4 2 hexColor) 16;
  in
    {
      red = r;
      green = g;
      blue = b;
    };

}
