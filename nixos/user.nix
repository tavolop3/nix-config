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
}
