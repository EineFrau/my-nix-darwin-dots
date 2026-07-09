{
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      fastfetch

      function fish_prompt
          set_color brred
          echo -n "╭─"
          set_color brred
          echo -n "("
          set_color brmagenta
          echo -n (whoami)
          set_color normal
          echo -n "  "
          set_color brblue
          echo -n "MacOS"
          set_color brred
          echo -n "["
          set_color bryellow
          echo -n (prompt_pwd)
          set_color brred
          echo -n "]"
          echo -n ")"

          set gitroot (git rev-parse --is-inside-work-tree 2>/dev/null)
          if test "$gitroot" = "true"
              set branch (git branch --show-current 2>/dev/null)
              set_color brred
              echo -n " |"
              set_color green
              echo -n " 󰊢 "
              set_color magenta
              echo -n "$branch"
          end

         echo ""

          set_color brred
          echo -n "╰─ "
          set_color normal
      end
    '';

    shellAliases = {
      ls = "eza --icons";
      ll = "eza -l --icons";
      la = "eza -a --icons";
      lt = "eza --icons --tree";
      gc = "git clone";
      gs = "git status";
      gd = "git diff";
      dr = "sudo darwin-rebuild switch --flake ~/nix#MacBook-Air-von-Rene";
      nn = "cd ~/nix; nvim ~/nix/configuration.nix";
      n = "nvim";
      c = "clear; fish";
    };
  };
}
