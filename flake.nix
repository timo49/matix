{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    stylix.url = "github:danth/stylix";

    home-manager = { 
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fenix = {
      url = "github:nix-community/fenix/monthly";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, stylix, fenix, ...}:
    let
      user = import "${builtins.getEnv "PWD"}/users/user.nix";
      vars = import ./users/${user.user}/variables.nix;
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system}; #package architecture for homemanager#
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
          ./core/system/configuration.nix

          stylix.nixosModules.stylix
          
           home-manager.nixosModules.home-manager
           {
             home-manager.useGlobalPkgs = true;
             home-manager.useUserPackages = true;
             home-manager.users.${vars.username} = import ./core/system/home.nix;
            
           }
           ({ pkgs, ... }: {
            
            environment.systemPackages = [ 
              fenix.packages.${system}.complete.toolchain
            ];
           })
        ];
      };
    }; 
  };
}
