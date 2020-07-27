# st - simple terminal

This is my fork of [st](https://st.suckless.org/) with some patches that I choose for convenience.

## Building

### Nix

```sh
nix-build -E 'with import <nixpkgs> {}; callPackage ./default.nix {}'
```

### Source

```sh
make st
# or build and move the binary to your system's PATH
make install
```
