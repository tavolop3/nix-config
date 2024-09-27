{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "laptop";

  # config especifica para laptop aca
  
  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  #boot.loader.grub.useOSProber = true; rendimiento del build, detecta SO's

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
}
