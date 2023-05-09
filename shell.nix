{ pkgs ? import <nixpkgs> { }
, unstable ? import <nixpkgs-unstable> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    git
    unstable.kicad
    zip
  ];
}
