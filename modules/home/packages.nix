{ pkgs, ... }: {

  home.packages = with pkgs; [
    app2unit
    firefox
    gh
    ripgrep
    nerd-fonts.blex-mono
    nerd-fonts.departure-mono
  ];

}
