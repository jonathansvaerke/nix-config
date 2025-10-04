{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            esc = "capslock";
            capslock = "esc";
            # Row 1
            q = "q";
            w = "w";
            e = "f";
            r = "p";
            t = "b";
            y = "j";
            u = "l";
            i = "u";
            o = "y";
            p = ";";

            # Row 2
            a = "a";
            s = "r";
            d = "s";
            f = "t";
            g = "g";
            h = "m";
            j = "n";
            k = "e";
            l = "i";
            ";" = "o";

            # Row 3
            z = "z";
            x = "x";
            c = "c";
            v = "d";
            b = "v";
            n = "k";
            m = "h";
          };
          shift = {
            p = ":";
          };
          altgr = {
            z = "æ";
            p = "ø";
            w = "å";
          };
        };
      };

    };
  };
}
