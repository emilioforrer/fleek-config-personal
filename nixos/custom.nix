{ pkgs, misc, programs, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  programs.bash.promptInit =  ''  
    eval "$(devbox global shellenv)"
  '';
 
}
