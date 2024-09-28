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

  # # Enable the OpenSSH daemon.
  # # services.openssh.enable = true;
  # services.openssh = {
  #   enable = true;
  #   ports = [ 2222 ]; #dafult 22
  #   settings = {
  #     PasswordAuthentication = true;
  #     # AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
  #     # UseDns = true;
  #     # X11Forwarding = false;
  #     PermitRootLogin = "no"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
  #   };
  # };
  # services.fail2ban.enable = true; #Warning: If you plan on using SSH on a public network, Fail2ban is highly recommended as a base standard of security.

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ /*2222*/ 50000 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
