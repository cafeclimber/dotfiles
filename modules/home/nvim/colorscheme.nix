{ pkgs, ... }:

{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      melange-nvim
    ];
    extraLuaConfig = /* lua */ '' 
      vim.cmd[[colorscheme melange]]
      vim.opt.termguicolors = true
    '';
  };
}
