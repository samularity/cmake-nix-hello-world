{ lib
, stdenv
, cmake
, pkg-config
, glibc_multi
}:

stdenv.mkDerivation {
  name = "cmake-nix";
  src = ./.;
  nativeBuildInputs = [ cmake pkg-config  ];
  buildInputs = [ glibc_multi ];
  installPhase = ''install -Dm755 $name $out/bin/$name'';
}
