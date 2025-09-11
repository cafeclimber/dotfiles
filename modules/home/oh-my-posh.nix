{ lib, config, ... }: {

  options = {
    oh-my-posh.enable = lib.mkEnableOption "Enable OhMyPosh";
  };

  config = lib.mkIf config.oh-my-posh.enable {
    programs.oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      useTheme = "dracula";
    };
  };

}
