{
  description = "Proj1";

  inputs = { 
    
    nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; 
    project = { 
      url = "../../";
     };
  
  };

  outputs = { self, nixpkgs, project }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      devShells.${system}.default = pkgs.mkShell {
        name = "proj1";
        buildInputs = [
          project.packages.${system}.starship1
        ];

        shellHook = ''
          echo "Createing proj1 environment"
        '';
      };
    };

}
