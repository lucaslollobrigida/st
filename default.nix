{ stdenv, pkgconfig, libX11, ncurses, libXft, harfbuzzFull }:

# with stdenv.lib;

stdenv.mkDerivation rec {
  pname = "st";
  version = "0.8.4";

  src = ./.;

  # configFile = optionalString (conf!=null) (writeText "config.def.h" conf);
  # postPatch = optionalString (conf!=null) "cp ${configFile} config.def.h";

  nativeBuildInputs = [ pkgconfig ncurses harfbuzzFull ];
  buildInputs = [ libX11 libXft harfbuzzFull ];

  installPhase = ''
    TERMINFO=$out/share/terminfo make install PREFIX=$out
  '';
}

