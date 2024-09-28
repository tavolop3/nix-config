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
  services.openssh = {
    enable = true;
    ports = [ 22 ]; #dafult 22
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      AllowUsers = [ "tao" ]; # Allows all users by default. Can be [ "user1" "user2" ]
      PermitRootLogin = "no"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
  };
  # services.fail2ban.enable = true; #Warning: If you plan on using SSH on a public network, Fail2ban is highly recommended as a base standard of security.

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ /*2222*/ 50000 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  #VirtualBox
  # virtualisation.virtualbox.host.enable = true;
  # users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
}
