{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  # List of options available: https://nix-community.github.io/home-manager/options.html
  programs.bash.initExtra =  ''
     echo "Init devbox global"
     eval "$(devbox global shellenv)"

     # atuin import auto
     # eval "$(zoxide init bash)"
     # eval "$(direnv hook bash)"
     # eval "$(starship init bash)"
     # eval "$(zellij setup --generate-auto-start bash)"

    # alias wnmap='"/mnt/c/Program Files (x86)/Nmap/nmap.exe"'
    # alias drun='docker run --rm -it -v $(pwd):/workspace -w /workspace -u $(id -u)'
    # alias mount-vaults=/mnt/c/Users/devem/OneDrive/workspace/scripts/mount-vaults.sh
    # alias unmount-vaults=/mnt/c/Users/devem/OneDrive/workspace/scripts/unmount-vaults.sh

    # . "$HOME/.cargo/env"
    # export PATH="$HOME/bin:$PATH"
    # export EDITOR=nvim

    # save path on cd
    function cd {
            builtin cd $@
            pwd >~/.last_dir
    }
    
    # restore last saved path
    if [ -f ~/.last_dir ]; then
            cd $(cat ~/.last_dir)
    fi

  '';
}
