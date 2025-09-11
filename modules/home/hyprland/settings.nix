{ pkgs, lib, inputs, ...}: {

  wayland.windowManager.hyprland.settings = {
    "$terminal" = "kitty";
    "$fileManager" = "dolphin";
    "$browser" = "firefox";
    "$super" = "SUPER";
  };

}
