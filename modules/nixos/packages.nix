{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    lm_sensors
    upower
  ];

  security.polkit.enable = true;

}
