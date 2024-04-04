{ pkgs ? import <nixpkgs> {} }:
let
    nodejs = pkgs.nodejs_20;

in
    pkgs.mkShell {
        buildInputs = [
            nodejs
        ];
        shellHook = ''
            export PATH="${nodejs}/bin:$PATH"
        '';
    }