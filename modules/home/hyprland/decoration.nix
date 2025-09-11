{ pkgs, lib, inputs, ...}:{

  wayland.windowManager.hyprland.settings.decoration = {
    rounding = "$windowRounding";

    blur = {
        enabled = "$blurEnabled";
        xray = "$blurXray";
        special = "$blurSpecialWs";
        ignore_opacity = true;  # Allows opacity blurring
        new_optimizations = true;
        popups = "$blurPopups";
        input_methods = "$blurInputMethods";
        size = "$blurSize";
        passes = "$blurPasses";
    };

    shadow = {
        enabled = "$shadowEnabled";
        range = "$shadowRange";
        render_power = "$shadowRenderPower";
        color = "$shadowColour";
    };
  };
}
