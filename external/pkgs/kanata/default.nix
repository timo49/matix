{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    kanata
  ];
    services.kanata = {
      enable = true;
      keyboards = {
        "lptp".config = ''
  (defsrc
    caps
  )

  (defalias
    esclmeta (tap-hold 175 175 esc lmeta)
  )

  (deflayer base
    @esclmeta
  )
  '';
      };
    };
  }
