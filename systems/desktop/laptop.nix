{ lib, pkgs, ... }:

{
  imports = [
    ../../core/desktop
    ../../modules/desktop/gaming/minecraft.nix
    ../../modules/desktop/social.nix
    ../../modules/development/javascript.nix
    ../../modules/hardware/ecotank.nix
    ../../modules/hardware/k400-plus.nix
    ../../modules/hardware/trackpad.nix
  ];

  dconf = {
    nightLightTemperature = 2700;
  };

  networking.networkmanager.wifi.powersave = false;

  networking.hostName = "laptop";
}
