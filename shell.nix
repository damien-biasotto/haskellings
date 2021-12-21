{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/14f3576475069686ed963ddd8d20f1a79e723b07.tar.gz") {}, compiler ? "ghc8107" }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    haskell.compiler.ghc8107
    which
    (import ./default.nix { inherit pkgs compiler; })
  ];

  shellHook = ''
    __GHCPATH=$(echo $(which ghc))
    echo "ghc_path: $__GHCPATH" > config.yaml
  '';
}
