{
  description = "System config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05"; 
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
        url = "github:nix-community/nixvim/nixos-24.05";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    commonConfig = ./nixos/configuration.nix;
  in {
    nixosConfigurations = { 
      desktop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
          commonConfig
          ./nixos/hosts/desktop/configuration.nix
        ];
      };

      laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
          commonConfig
          ./nixos/hosts/laptop/configuration.nix
        ];
      };
    };

    homeConfigurations.tao = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ 
        ./home-manager/home.nix 
        inputs.nixvim.homeManagerModules.nixvim
      ];
    };

  };
}
