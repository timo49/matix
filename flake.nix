{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs"; # avoids version conflicts
  };

  outputs = { self, nixpkgs, home-manager, ...}:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system}; #package architecture for homemanager
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [ ./configuration.nix ];
      };
    };
   
    homeConfigurations = 
    let
      vars = import ./modules/common/variables.nix;
    in {
      ${vars.username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs; # passes declaration of the "pkgs" in the let binding as an argument
        modules = [ ./home.nix ];
      };
    };
  };
}
