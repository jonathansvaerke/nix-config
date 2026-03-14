{ config, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      alias = {
        br = "branch";
        del = "branch -D";
        c = "commit";
        cm = "commit -m";
        co = "checkout";
        l = "log";
        s = "status";
        sw = "switch";

        acp = "!f() { git add -A && git commit -m \"$*\" && git push; }; f";
        save = "!git add -A && git commit -m 'Quick save' && git push";
      };
    };
    includes = [ { path = config.sops.templates."git-secrets".path; } ];
  };

  sops.templates."git-secrets" = {
    content = ''
      [user]
        name = ${config.sops.placeholder."git/userName"}
        email = ${config.sops.placeholder."git/userEmail"}
    '';
  };

  sops.secrets = {
    "git/userName" = { };
    "git/userEmail" = { };
  };
}
