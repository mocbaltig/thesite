{
  description = "a gatsby site: 'thesite'";

  inputs = {
    nixpkgs.url = "nixpkgs";
    flakelight.url = "github:nix-community/flakelight";
  };

  outputs =
    { flakelight, ... }@inputs:
    flakelight ./. {
      inherit inputs;
      devShell.packages =
        pkgs: with pkgs; [
          nodejs
          # gatsby-cli
          typescript
          zsh
        ];
      devShell.shellHook = ''
        # nix flake update nixpkgs --inputs-from ~/.config/nixcfg
        exec zsh
      '';
    };
}
