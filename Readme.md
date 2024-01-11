## cmake nix hello wold example package

small example to use as reference for bigger projects

### usage examples

run the flake
```bash
nix run github:samularity/cmake-nix-hello-world
```

(cross riscv64-unknown-linux-gnu) build with nix-shell and cmake
```bash
nix-shell
cmake -B build -S .
cmake --build build
```

how to add to your configuration.nix 
```nix
inputs.cmake-nix-hello-world.url = github:samularity/cmake-nix-hello-world;
inputs.cmake-nix-hello-world.inputs.nixpkgs.follows = "nixpkgs";

outputs = { self, nixpkgs, cmake-nix-hello-world, ... }:{
    environment.systemPackages = with pkgs; [
    cmake-nix-hello-world.packages.${config.nixpkgs.crossSystem.system}.default
    ];
}
```