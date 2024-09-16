{
  description = "Proj3";

  inputs = {

    nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
    project = { url = "../../"; };

  };

  outputs = { self, nixpkgs, project }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      devShells.${system}.default = pkgs.mkShell {
        name = "proj3";

        shellHook = ''
          ${project.devShells.default.shellHook or ""}
          echo "Createing proj3 environment"
        '';
      };
    };

}
