{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.tao = {
      isNormalUser = true;
      description = "tao";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "tao";
}
