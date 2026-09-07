{ config, pkgs, ... }:

let
  stable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/26.05)
    { config = config.nixpkgs.config; };
in

{
  home-manager.users.luke = {
    programs.vscode = {
      enable = true;
      package = stable.vscode;
    };
  };
}
