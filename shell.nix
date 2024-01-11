let pkgs = import <nixpkgs> {
  crossSystem = {
    # used for 32bit riscv, incompatible with 64bit! 
    #config = "riscv32-unknown-linux-gnu"; 
    
    #64bit riscv like JH7110 or TH1520
    config = "riscv64-unknown-linux-gnu";
  };
};

in
  pkgs.callPackage (
    {mkShell, cmake}:
    mkShell {
      nativeBuildInputs = [ cmake ]; # you build dependencies here
      buildInputs = [  ]; # your dependencies here
    }
  ) {}