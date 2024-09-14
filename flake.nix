{
  description = "A project structure";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
    nixvim = { url = "github:nix-community/nixvim?ref=main"; };
  };

  outputs = { self, nixpkgs, nixvim, ... }@inputs:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      formatter.${system} = pkgs.nixpkgs-fmt;
      packages.${system} = {
        starship1 = (import ./features/starship.nix { inherit pkgs; });

        nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
          inherit pkgs;
          module = import ./features/nvim;
          extraSpecialArgs = { };
        };
      };

      #
      # A test shell for testing the features defined.
      devShells.${system}.test = pkgs.mkShell {
        name = "test";
        buildInputs = [
          # pkgs.starship1
          # config.packages.starship1
          # nvim
        ];

        shellHook = ''
          echo "Started the test shell"
        '';
      };

    };

}
