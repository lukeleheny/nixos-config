{ pkgs, ...}:

{
  users.users.luke.packages = with pkgs; [
    dolphin-emu
  ];
}
