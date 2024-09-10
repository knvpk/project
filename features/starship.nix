{ pkgs, ... }:
let 
settings = {nix_shell = { style = "bold green"; };};
settingsFormat = pkgs.formats.toml { };
tomlSettings = settingsFormat.generate "starship.toml" settings;
in pkgs.stdenv.mkDerivation {

  pname = "starship1";
  version = "1.0";

  nativeBuildInputs = [ pkgs.starship ];
  # settingsFile = pkgs.writeText "startship.toml" tomlSettings;

  src = null;
  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/starship
    export STARSHIP_CONFIG=${tomlSettings}

    cp ${tomlSettings} $out/starship
  '';

  env = {
    STARSHIP_CONFIG="${tomlSettings}";
  };

  shellHook = ''
    export STARSHIP_CONFIG=${tomlSettings}
  '';
}
