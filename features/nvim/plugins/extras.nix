{ config, pkgs, ... }:
{
  # Plugins that are not yet supported by Nixvim
  extraPlugins = with pkgs.vimPlugins;[
  ];
}
