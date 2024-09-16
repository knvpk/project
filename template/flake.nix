{
  description = "Flake generated via knvpk project";

  inputs = { 
    
    nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; 
    project = { 
      url = "github:knvpk/project?ref=main";
    };

  outputs = { self, nixpkgs, nixvim, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {

      devShells.${system}.default = pkgs.mkShell {
        name = "project_name";
      };
    };
  
  };
}