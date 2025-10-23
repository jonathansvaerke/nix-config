{ config, ... }:
{
  programs.git = {
    enable = true;
    includes = [ { path = config.sops.templates."git-secrets".path; } ];
  };

  sops.templates."git-secrets" = {
    content = ''
      [user]
        name = ${config.sops.placeholder."git/userName"}
        email = ${config.sops.placeholder."git/userEmail"}
      [alias]
        br = branch
        ci = commit
        co = checkout
        st = status

        cm = commit -m
    '';
  };
}
