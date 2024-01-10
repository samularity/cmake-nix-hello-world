{ lib
, stdenv
, cmake
}:

stdenv.mkDerivation {
  name = "cmake-nix";
  src = ./.;
  nativeBuildInputs = [ cmake ];
  installPhase = ''install -Dm755 $name $out/bin/$name'';
}
