{ lib, config, ... }: {

  imports = [
    ./caelestia/caelestia.nix
    ./hyprland/hyprland.nix
    ./kitty.nix
    ./nvim/nvim.nix
    ./oh-my-posh.nix
    ./packages.nix
    ./settings.nix
    ./steam.nix
    ./zsh.nix
  ];  


}
