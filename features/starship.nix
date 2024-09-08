{}:
let  settings = pkgs.formats.toml {
        nix_shell = { style = "bold green"; };
      };
      in
{
     packages.${system}.example = pkgs.stdenv.mkDerivation {

        pname = "my_startship";
        version = "1.0";

        nativeBuildInputs = [ pkgs.starship ];
        settingsFile = pkgs.writeText "startship.toml" settings;

        installPhase = ''
          mkdir -p $out/etc/xdg/starship

          cp $settingsFile $out/etc/xdg/starship
        '';

        shellHook = ''
          export STARTSHIP_CONFIG="$out/etc/xdg/starship/starship.toml"
        '';
      };

}