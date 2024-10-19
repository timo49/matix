{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "sddm-theme";

  src = ./sddm-theme;

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out
  '';
}
