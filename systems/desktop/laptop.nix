{ lib, pkgs, ... }:

{
  imports = [
    ../../core/desktop
    ../../modules/desktop/gaming/minecraft.nix
    ../../modules/desktop/social.nix
    ../../modules/development/javascript.nix
    ../../modules/hardware/ecotank.nix
    ../../modules/hardware/k400-plus.nix
    # ../../modules/hardware/trackpad.nix
  ];

  dconf = {
    nightLightAlwaysOn = true;
    nightLightTemperature = 3000;
  };

  networking.networkmanager.wifi.powersave = false;

  networking.hostName = "laptop";
}
