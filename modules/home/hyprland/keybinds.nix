{ pkgs, lib, inputs, ...}: {

  wayland.windowManager.hyprland.settings = {
    exec = ["hyprctl dispatch submap global"];
  };

  wayland.windowManager.hyprland.submaps = {
    global = {
      settings = {
        bindi = ["$super, Super_L, global, caelestia:launcher"];
        bindin = [
	  "$super, catchall, global, caelestia:launcherInterrupt"
          "$super, mouse:272, global, caelestia:launcherInterrupt"
          "$super, mouse:273, global, caelestia:launcherInterrupt"
          "$super, mouse:274, global, caelestia:launcherInterrupt"
          "$super, mouse:275, global, caelestia:launcherInterrupt"
          "$super, mouse:276, global, caelestia:launcherInterrupt"
          "$super, mouse:277, global, caelestia:launcherInterrupt"
          "$super, mouse_up, global, caelestia:launcherInterrupt"
          "$super, mouse_down, global, caelestia:launcherInterrupt"
	];

        bind = [
          "$super, Return, exec, $terminal"
          "$super, Return, global, caelestia:launcherInterrupt"
          "$super SHIFT, Q, killactive,"
          "$super SHIFT, Q, global, caelestia:launcherInterrupt"
          "$super, M, exit,"
          "$super, F, exec, $fileManager"
          "$super, F, global, caelestia:launcherInterrupt"
          "$super, Space, togglefloating,"
          "$super, Space, global, caelestia:launcherInterrupt"
          "$super, P, pseudo, # dwindle"
          "$super, P, global, caelestia:launcherInterrupt"
          "$super, J, togglesplit, # dwindle"
          "$super, J, global, caelestia:launcherInterrupt"
          "$super, W, exec, $browser"
          "$super, W, global, caelestia:launcherInterrupt"
          
          # Move focus with mainMod + arrow keys
          "$super, left, movefocus, l"
          "$super, left, global, caelestia:launcherInterrupt"
          "$super, right, movefocus, r"
          "$super, right, global, caelestia:launcherInterrupt"
          "$super, up, movefocus, u"
          "$super, up, global, caelestia:launcherInterrupt"
          "$super, down, movefocus, d"
          "$super, down, global, caelestia:launcherInterrupt"
          
          # Switch workspaces with mainMod + [0-9]
          "$super, 1, workspace, 1"
          "$super, 1, global, caelestia:launcherInterrupt"
          "$super, 2, workspace, 2"
          "$super, 2, global, caelestia:launcherInterrupt"
          "$super, 3, workspace, 3"
          "$super, 3, global, caelestia:launcherInterrupt"
          "$super, 4, workspace, 4"
          "$super, 4, global, caelestia:launcherInterrupt"
          "$super, 5, workspace, 5"
          "$super, 5, global, caelestia:launcherInterrupt"
          "$super, 6, workspace, 6"
          "$super, 6, global, caelestia:launcherInterrupt"
          "$super, 7, workspace, 7"
          "$super, 7, global, caelestia:launcherInterrupt"
          "$super, 8, workspace, 8"
          "$super, 8, global, caelestia:launcherInterrupt"
          "$super, 9, workspace, 9"
          "$super, 9, global, caelestia:launcherInterrupt"
          "$super, 0, workspace, 10"
          "$super, 0, global, caelestia:launcherInterrupt"
          
          # Move active window to a workspace with mainMod + SHIFT + [0-9]
          "$super SHIFT, 1, movetoworkspace, 1"
          "$super SHIFT, 1, global, caelestia:launcherInterrupt"
          "$super SHIFT, 2, movetoworkspace, 2"
          "$super SHIFT, 2, global, caelestia:launcherInterrupt"
          "$super SHIFT, 3, movetoworkspace, 3"
          "$super SHIFT, 3, global, caelestia:launcherInterrupt"
          "$super SHIFT, 4, movetoworkspace, 4"
          "$super SHIFT, 4, global, caelestia:launcherInterrupt"
          "$super SHIFT, 5, movetoworkspace, 5"
          "$super SHIFT, 5, global, caelestia:launcherInterrupt"
          "$super SHIFT, 6, movetoworkspace, 6"
          "$super SHIFT, 6, global, caelestia:launcherInterrupt"
          "$super SHIFT, 7, movetoworkspace, 7"
          "$super SHIFT, 7, global, caelestia:launcherInterrupt"
          "$super SHIFT, 8, movetoworkspace, 8"
          "$super SHIFT, 8, global, caelestia:launcherInterrupt"
          "$super SHIFT, 9, movetoworkspace, 9"
          "$super SHIFT, 9, global, caelestia:launcherInterrupt"
          "$super SHIFT, 0, movetoworkspace, 10"
          "$super SHIFT, 0, global, caelestia:launcherInterrupt"
          
          # Move windows
          "$super SHIFT, left, swapwindow, l"
          "$super SHIFT, right, swapwindow, r"
          "$super SHIFT, up, swapwindow, u"
          "$super SHIFT, down, swapwindow, d"
        ];
      };
    };
  };

  wayland.windowManager.hyprland.settings = {
          
    bindm = [
      "$super, mouse:273, resizewindow"
    ];

    bindel = [
      # Laptop multimedia keys for volume and LCD brightness
      ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
    ];

    bindl = [
      # Requires playerctl
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];
  };
}
