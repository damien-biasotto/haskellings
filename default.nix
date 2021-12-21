{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/14f3576475069686ed963ddd8d20f1a79e723b07.tar.gz") {}, compiler ? "ghc8107" }:
pkgs.pkgs.haskell.packages.${compiler}.callPackage ./haskellings.nix { }
