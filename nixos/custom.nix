{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  # List of options available: https://nix-community.github.io/home-manager/options.html
  programs.bash.initExtra =  ''
     echo "Init devbox global"
     eval "$(devbox global shellenv)"
  '';
}
