{ lib, pkgs, ... }:

{
  imports = [
    ../../core/desktop
    ../../modules/desktop/gaming/minecraft.nix
    ../../modules/desktop/social.nix
    ../../modules/development/javascript.nix
    ../../modules/hardware/ecotank.nix
    ../../modules/hardware/k400-plus.nix
  ];

  dconf = {
    nightLightTemperature = 2700;
  };

  firefox.scrollSpeed = lib.mkDefault 50;

  networking.networkmanager.wifi.powersave = false;

  networking.hostName = "laptop";
}
