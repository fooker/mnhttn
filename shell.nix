{ pkgs ? import <nixpkgs> { } }:

let

  zephyr-sdk = pkgs.stdenv.mkDerivation rec {
    pname = "zephyr-sdk";
    version = "0.16.5-1";

    src = pkgs.fetchurl {
      url = "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${version}/zephyr-sdk-${version}_linux-${pkgs.stdenv.hostPlatform.linuxArch}.tar.xz";
      hash = "sha256-AflCFG0vxtav1a/m9LXDFVJdLJN8fmE9MxKwmSszvGg=";
    };

    dontStrip = true;

    nativeBuildInputs = with pkgs; [
      bash
      which
      cmake
      wget
    ];

    patchPhase = ''
      patchShebangs setup.sh
    '';

    dontConfigure = true;

    buildPhase = ''
      ./setup.sh -t arm-zephyr-eabi
    '';

    installPhase = ''
      mv $(pwd) $out
    '';
  };

in
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    git
    kicad
    zip
    python3Packages.west
    python3Packages.pyelftools
    cmake
    ninja
    just
  ];

  ZEPHYR_TOOLCHAIN_VARIANT = "zephyr";
  ZEPHYR_SDK_INSTALL_DIR = "${zephyr-sdk}/cmake";

  passthru = {
    inherit zephyr-sdk;
  };
}
