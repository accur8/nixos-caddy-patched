{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "go-dev-env";

  buildInputs = with pkgs; [
    go           # Go programming language
    gopls        # Go language server
    golangci-lint # Linter
    direnv       # Environment variable manager (optional, useful for project-specific setups)
  ];

#   shellHook = ''
#     export GOPATH=$HOME/go
#     export PATH=$GOPATH/bin:$PATH
#     export GO111MODULE=on
#     echo "Go development environment loaded!"
#   '';
}