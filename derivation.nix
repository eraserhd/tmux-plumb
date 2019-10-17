{ pkgs, tmuxPlugins, fetchFromGitHub, ... }:

tmuxPlugins.mkDerivation {
  pluginName = "plumb";
  postInstall = ''
    sed -i -e 's,9 plumb,${pkgs.plan9port}/bin/9 plumb,' $target/scripts/plumb
  '';
  src = ./.;
}
