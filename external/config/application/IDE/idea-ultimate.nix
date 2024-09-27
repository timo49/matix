{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
    jetbrains.rust-rover
    gccgo14
    tree
    #rustc
    #gccgo14
    #cargo
    #rustfmt
    #clippy
  ];
}
