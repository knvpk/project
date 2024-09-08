{
  description = "A KNVPK project";

  inputs = { nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; };

  outputs = { self, nixpkgs }@inputs:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      formatter.${system} = pkgs.nixpkgs-fmt;

      #
      # A test shell for testing the features defined.
      devShells.${system}.test = pkgs.mkShell {
        name = "test";
        buildInputs = with pkgs; [ ];

        shellHook = ''
          echo "Started the test shell"
        '';
      };

    };

}
