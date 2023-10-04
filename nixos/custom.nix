{ config, pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  programs.bash.promptInit =  ''
     echo "Init devbox global"
     eval "$(devbox global shellenv)"

  '';
}
