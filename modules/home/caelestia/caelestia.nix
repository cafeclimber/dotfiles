{ pkgs, lib, config, inputs, ...}:

let
  wallpapers = ../files/wallpapers;
  config_dir = ./.;
  caelestia-shell = inputs.caelestia-shell.packages."x86_64-linux".default.override {
    withCli = true;
  };
in {
  home.packages = with pkgs; [
    caelestia-shell
  ];

  xdg.configFile."caelestia/shell.json".source =
    config_dir + "/shell.json";

  xdg.stateFile."caelestia/wallpaper/path.txt".source =
    config_dir + "/path.txt";
}
