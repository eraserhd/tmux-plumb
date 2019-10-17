{ stdenv, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  pname = "tmux-plumb";
  version = "0.1.0";

  src = ./.;

  meta = with stdenv.lib; {
    description = "TODO: fill me in";
    homepage = https://github.com/eraserhd/tmux-plumb;
    license = licenses.publicDomain;
    platforms = platforms.all;
    maintainers = [ maintainers.eraserhd ];
  };
}
