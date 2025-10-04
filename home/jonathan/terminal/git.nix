{ config, ... }:
{
  programs.git = {
    enable = true;
    userName = builtins.replaceStrings [ "\n" ] [ "" ] (
      builtins.readFile config.sops.secrets."git/username".path
    );
    userEmail = builtins.replaceStrings [ "\n" ] [ "" ] (
      builtins.readFile config.sops.secrets."git/useremail".path
    );
  };
}
