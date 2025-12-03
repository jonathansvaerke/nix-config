{ lib, ... }:
{
  services.keyd = lib.mkDefault {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            leftalt = "layer(leftalt)";
            rightalt = "layer(rightalt)";

            esc = "capslock";
            capslock = "overload(control,esc)";

            #shift = "layer(shift)";

            # Row 1
            #q = "q";
            #w = "w";
            #e = "f";
            #r = "p";
            #t = "b";
            #y = "j";
            #u = "l";
            #i = "u";
            #o = "y";
            #p = ";";

            # Row 2
            #a = "a";
            #s = "r";
            #d = "s";
            #f = "t";
            #g = "g";
            #h = "m";
            #j = "n";
            #k = "e";
            #l = "i";
            #";" = "o";

            # Row 3
            #z = "z";
            #x = "x";
            #c = "c";
            #v = "d";
            #b = "v";
            #n = "k";
            #m = "h";
          };
          #shift = {
          #p = ":";
          #;
          "rightalt:G" = {
            # If any of the mapped keys for this layer are pressed use rightalt, the key and output the correct value, but else just use the key pressed and the layer G (which is just rightalt).
            j = "left";
            k = "down";
            l = "up";
            ";" = "right";
          };
        };
      };
    };
  };
}
