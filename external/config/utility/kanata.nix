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
    esclmeta (tap-hold 100 100 esc lmeta)
  )

  (deflayer base
    @esclmeta
  )
  '';
      };
    };
  }
