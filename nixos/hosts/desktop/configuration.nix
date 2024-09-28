{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "desktop";

  # config especifica para desktop aca
  # Bootloader.
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
    grub = {
      efiSupport = true;
      useOSProber = true;
      #efiInstallAsRemovable = true; # in case canTouchEfiVariables doesn't wor>
      device = "nodev";
    };
  };

  services.xserver.videoDrivers = [ "amdgpu" ];

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
