{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";

    home-manager = { 
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-colors.url = "github:misterio77/nix-colors";

    nvchad4nix = {
      url = "github:nix-community/nix4nvchad";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nix-colors, ...}@inputs:
    let
      vars = import ./modules/common/variables.nix;
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system}; #package architecture for homemanager
      extraSpecialArgs = { inherit system; inherit inputs; inherit nix-colors; };  # <- passing inputs to the attribute set for home-manager
      specialArgs = { inherit system; inherit inputs; }; # <- same but for Nixos
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit specialArgs;

        modules = [
	  ./configuration.nix

	  {  # <- # example to add the overlay to Nixpkgs:
            nixpkgs = {
              overlays = [
                (final: prev: {
                    nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad;
                })
              ];
            };
          }
        ];

      };
    };
   
    homeConfigurations = {
      ${vars.username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs; # passes declaration of the "pkgs" in the let binding as an argument
        inherit extraSpecialArgs;

	modules = [ ./home.nix ];
      };
    };
  };
}
