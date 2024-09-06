{ config, pkgs, ... }:
let
  vars = import ../../common/variables.nix;
in {

  programs.qutebrowser = {
    enable = true;
    extraConfig = ''
      c.url.start_pages = ["about:blank"]
      c.url.default_page = "about:blank"

      c.fonts.default_family = "Hack Nerd Font"
      c.colors.webpage.preferred_color_scheme = "dark"

      c.window.transparent = True

      # Define the base colors with appropriate opacity
      base00 = "rgba(${config.lib.stylix.colors.base00-rgb-r}, ${config.lib.stylix.colors.base00-rgb-g}, ${config.lib.stylix.colors.base00-rgb-b}, ${vars.opacity})"
      base01 = "rgba(${config.lib.stylix.colors.base01-rgb-r}, ${config.lib.stylix.colors.base01-rgb-g}, ${config.lib.stylix.colors.base01-rgb-b}, ${vars.opacity})"
      base02 = "rgba(${config.lib.stylix.colors.base02-rgb-r}, ${config.lib.stylix.colors.base02-rgb-g}, ${config.lib.stylix.colors.base02-rgb-b}, ${vars.opacity})"
      base05 = "rgba(${config.lib.stylix.colors.base05-rgb-r}, ${config.lib.stylix.colors.base05-rgb-g}, ${config.lib.stylix.colors.base05-rgb-b}, ${vars.opacity})"
      base08 = "rgba(${config.lib.stylix.colors.base08-rgb-r}, ${config.lib.stylix.colors.base08-rgb-g}, ${config.lib.stylix.colors.base08-rgb-b}, ${vars.opacity})"

      # Basic UI styling
      c.colors.completion.fg = base05
      c.colors.completion.odd.bg = base00
      c.colors.completion.even.bg = base00
      c.colors.completion.item.selected.bg = base02
      c.colors.completion.item.selected.fg = base05

      # Context menu
      c.colors.contextmenu.menu.bg = base00
      c.colors.contextmenu.menu.fg = base05
      c.colors.contextmenu.selected.bg = base02
      c.colors.contextmenu.selected.fg = base05

      # Status bar
      c.colors.statusbar.normal.bg = base00
      c.colors.statusbar.normal.fg = base05
      c.colors.statusbar.insert.bg = base00
      c.colors.statusbar.insert.fg = base08

      # Tab bar
      c.colors.tabs.bar.bg = base00
      c.colors.tabs.odd.bg = base00
      c.colors.tabs.even.bg = base00
      c.colors.tabs.selected.odd.bg = base02
      c.colors.tabs.selected.even.bg = base02
      c.colors.tabs.selected.odd.fg = base05
      c.colors.tabs.selected.even.fg = base05

      # Webpage background
      c.colors.webpage.bg = base00
    '';
  };
}
