{ config, pkgs, ...}:

{
  imports = [
    # Color Manager
    ../../external/config/color-manager/stylix.nix

    # Desktop Environment
    ../../external/config/desktop-environment/window-manager/hyprland.nix
    ../../external/config/desktop-environment/status-bar/waybar.nix
    ../../external/config/desktop-environment/wallpaper-setter/hyprpaper.nix
    ../../external/config/desktop-environment/notification-daemon/dunst.nix
    ../../external/config/desktop-environment/app-launcher/rofi-wayland.nix

    # Terminal Environment
    ../../external/config/terminal/emulator/kitty.nix
    ../../external/config/terminal/shell/fish.nix
    ../../external/config/terminal/prompt/starship.nix
    ../../external/config/terminal/editor/neovim.nix
    ../../external/config/terminal/fastfetch/fastfetch.nix

    # Utility
    ../../external/config/utility/git.nix
    ../../external/config/utility/kanata.nix
    ../../external/config/application/virtualisation/quickemu.nix

    # Apps
    ../../external/config/application/browser/qutebrowser.nix
    ../../external/config/application/virtualisation/virt-manager.nix
    ../../external/config/application/notes/obsidian.nix
    ../../external/config/application/discord/vesktop.nix
    ../../external/config/application/bottom/bottom.nix
    ../../external/config/application/IDE/java-IDE.nix
    ../../external/config/application/IDE/rust-IDE.nix
    ../../external/config/application/music/spotube.nix
    ../../external/config/application/CISCO/packetTracer.nix
    ../../external/config/application/notes/libreoffice.nix
    #../../external/config/application/gaming/minecraft.nix
    ../../external/config/application/communication/element.nix
    ../../external/config/application/drawing/kuion.nix

  ];
}
