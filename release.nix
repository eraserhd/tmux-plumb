{ nixpkgs ? (import ./nixpkgs.nix), ... }:
let
  pkgs = import nixpkgs { config = {}; };
  tmux-plumb = pkgs.callPackage ./derivation.nix {};
in {
  test = pkgs.runCommandNoCC "tmux-plumb-test" {} ''
    mkdir -p $out
    : ${tmux-plumb}
  '';
}
