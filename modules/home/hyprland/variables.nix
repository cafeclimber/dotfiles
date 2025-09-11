{ pkgs, lib, inputs, ... }: {

  wayland.windowManager.hyprland.settings = {
    "$terminal" = "kitty";
    "$browser" = "firefox";
    "$super" = "SUPER";

    # Shadow
    "$shadowEnabled" = true;
    "$shadowRange" = 20;
    "$shadowRenderPower" = 3;
    "$shadowColour" = "rgba(0, 0, 0, 0.4)";

    # Blur
    "$blurEnabled" = true;
    "$blurSpecialWs" = false;
    "$blurPopups" = true;
    "$blurInputMethods" = true;
    "$blurSize" = 8;
    "$blurPasses" = 2;
    "$blurXray" = false;

    # Gaps
    "$workspaceGaps" = 20;
    "$windowGapsIn" = 10;
    "$windowGapsOut" = 40;
    "$singleWindowGapsOut" = 20;
    
    # Window styling
    "$windowOpacity" = 0.95;
    "$windowRounding" = 10;
    
    "$windowBorderSize" = 3;
    "$activeWindowBorderColour" = "rgba($primarye6)";
    "$inactiveWindowBorderColour" = "rgba($onSurfaceVariant11)";
  };

}
