self: super: {
  tmuxPlugins = super.tmuxPlugins // {
    plumb = super.callPackage ./derivation.nix {};
  };
}
