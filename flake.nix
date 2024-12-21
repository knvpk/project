{
  description = "A project structure";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
    nixvim = { 
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
	  };
  };

  outputs = { self, nixpkgs, nixvim, ... }@inputs:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      formatter.${system} = pkgs.nixpkgs-fmt;
      packages.${system} = {
        my_starship = (import ./features/starship.nix { inherit pkgs; });

        nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
          inherit pkgs;
          module = import ./features/nvim;
          extraSpecialArgs = { };
        };
      };

      devShells.${system} = {

        default = pkgs.mkShell { inputsFrom = [ pkgs.my_starship ]; };

        #
        # A test shell for testing the features defined.

        test = pkgs.mkShell {
          name = "test";
          packages = [
            # pkgs.starship1
            # config.packages.starship1
            # nvim
          ];

          inputsFrom = [ pkgs.my_starship ];

          shellHook = ''
            echo "Started the test shell"
          '';
        };
      };

      templates.simple = {
        path = ./template;
        description = "Project using nix with some defaults.";
      };

      # templates.default = templates.simple;
    };

}
