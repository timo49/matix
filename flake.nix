{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    inputs.nixpkgs.follows = "nixpkgs";

    home-manager = { 
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nix-colors, ...}:
    let
      vars = import ./modules/common/variables.nix;
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system}; #package architecture for homemanager

      extraSpecialArgs = { inherit system; inherit pkgs;  inherit nix-colors; };  # <- passing inputs to the attribute set for home-manager
      specialArgs = { inherit system; }; # <- same but for Nixos
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit specialArgs;
        modules = [ ./configuration.nix ];
      };
    };
   
    homeConfigurations = {
      ${vars.username} = home-manager.lib.homeManagerConfiguration {
        inherit extraSpecialArgs;
	modules = [ ./home.nix ];
      };
    };
  };
}
