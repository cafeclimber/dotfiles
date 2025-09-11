{ pkgs, lib, config, ... }: {

  options = {
    nvim.enable = lib.mkEnableOption "Enable neovim";
  };

  imports = [
    ./colorscheme.nix
  ];

  config = lib.mkIf config.nvim.enable {
    programs.neovim = {
      enable = true;
      vimAlias = true;
      vimdiffAlias = true;
      defaultEditor = true;
      plugins = with pkgs.vimPlugins; [
        nvim-web-devicons
      ];
    };
  };

}
