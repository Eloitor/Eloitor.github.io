with import <nixpkgs-unstable> { };

let jekyll_env = bundlerEnv rec {
  name = "jekyll_env";
  inherit ruby;
  gemfile = ./Gemfile;
  lockfile = ./Gemfile.lock;
  gemset = ./gemset.nix;

};
in
stdenv.mkDerivation rec {
#pkgs.mkShell rec {
    name = "jekyll_env";
    buildInputs = [ jekyll_env ruby ];

    shellHook = ''
      exec ${jekyll_env}/bin/jekyll serve --watch
    '';
  }
