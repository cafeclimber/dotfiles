{ pkgs, lib, config, ...}: {

  options = {
    sddm.enable = lib.mkEnableOption "Enable SDDM";
  };
  
  config = lib.mkIf config.sddm.enable {
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

}
