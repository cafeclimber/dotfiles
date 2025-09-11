{ pkgs, lib, inputs, ... }:

  let
    wallpaper = ../../files/wallpapers/solarpunk.jpg;
  in {

    imports = [
      ./animations.nix
      ./decoration.nix
      ./keybinds.nix
      ./variables.nix
    ];

    wayland.windowManager.hyprland = {
      enable=true;
      settings = {
        exec-once = [
	  "caelestia-shell -d"
        ];
        monitor = [ ",preferred,auto,auto" ];

        general = {
          gaps_in = 5;
          gaps_out = 20;
          border_size = 2;
          resize_on_border = false;
          allow_tearing = false;
          layout = "dwindle";
        };

        dwindle = {
          pseudotile = true;
          preserve_split = true;
        };

        misc = {
          disable_hyprland_logo = true;
        };

        input = {
          kb_layout = "us";
          kb_variant = "colemak_dh";

          follow_mouse = 1;

          sensitivity = 0;

          touchpad = {
              natural_scroll = false;
              tap-to-click = false;
          };
        };

        gestures = {
          workspace_swipe = false;
        };

        windowrulev2 = [
          # Ignore maximize requests from apps. You'll probably like this.
          "suppressevent maximize, class:.*"
          # Fix some dragging issues with XWayland
          "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
        ];
      };
    };  
}
