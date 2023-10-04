{ config, pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  programs.bash.bashrcExtra =  ''
     echo "Init devbox global"
     eval "$(devbox global shellenv)"

  '';
}
