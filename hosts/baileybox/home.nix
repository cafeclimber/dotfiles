{ config, pkgs, ... }:

{

  home.username = "bailey";
  home.homeDirectory = "/home/bailey";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  fonts.fontconfig.enable = true;

  kitty.enable = true;
  nvim.enable = true;
  oh-my-posh.enable = true;

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
