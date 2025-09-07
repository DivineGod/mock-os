{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    flake-utils = {
      url = "github:numtide/flake-utils";
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dpanel = {
      url = "github:divinegod/mock-dpanel";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    dogeboxd = {
      url = "github:divinegod/mock-dogeboxd";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.dpanel-src.follows = "dpanel";
    };

    dkm = {
      url = "github:divinegod/mock-dkm";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    dogebox-nur-packages = {
      url = "github:dogebox-wg/dogebox-nur-packages";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }@inputs:
    let
      dbxRelease = "v0.0.0";

    in
    {
    };
}
