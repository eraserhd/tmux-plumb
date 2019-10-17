{ tmuxPlugins, fetchFromGitHub, ... }:

tmuxPlugins.mkDerivation {
  pluginName = "plumb";
  src = ./.;
}
