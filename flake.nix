{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    stylix.url = "github:danth/stylix";
    awww.url = "git+https://codeberg.org/LGFae/awww";

    home-manager = { 
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix/monthly";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs:
    let
      user = import "${builtins.getEnv "PWD"}/users/user.nix";
      settings = import ./users/${user.user}/settings.nix;
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system}; #package architecture for homemanager
      args = {
        inherit settings;
        inherit inputs;
      };
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        specialArgs = args;
        modules = [
          ./core/system/configuration.nix

          inputs.stylix.nixosModules.stylix
          inputs.home-manager.nixosModules.home-manager
          {
           home-manager = {
             useGlobalPkgs = true;
             useUserPackages = true;
             users.${settings.username} = import ./core/system/home.nix;
             extraSpecialArgs = args;
           };
          }
           ({ pkgs, ... }: {
            
            environment.systemPackages = [ 
              inputs.fenix.packages.${system}.complete.toolchain
              ];
           })
        ];
      };
    }; 
  };
}
