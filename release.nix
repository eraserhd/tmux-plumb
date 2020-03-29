{ nixpkgs ? (import ./nixpkgs.nix), ... }:
let
  pkgs = import nixpkgs {
    config = {};
    overlays = [
      (import ./overlay.nix)
    ];
  };
in {
  test = pkgs.runCommandNoCC "tmux-plumb-test" {} ''
    mkdir -p $out
    : ${pkgs.tmuxPlugins.plumb}
  '';
}
