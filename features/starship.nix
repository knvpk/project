{ pkgs, ... }:
let 
settings = {nix_shell = { style = "bold green"; };};
settingsFormat = pkgs.formats.toml { };
tomlSettings = settingsFormat.generate "starship.toml" settings;
in pkgs.stdenv.mkDerivation {

  pname = "my_starship";
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

  shellHook = ''
    export STARSHIP_CONFIG=${tomlSettings}
    # TODO:: Either hardcode zsh or auto-detect
    eval "$(starship init bash)"
  '';

  meta = {
    description = "Sharship with config maintained at sore";
    license = "mit";
    maintainers = ["Pavan <katakampavan.btech@gmail.com>"];
  };
}
