module Main exposing (..)

import Html
import String


(~=) str1 str2 =
    String.startsWith (String.left 1 str2) str1


main =
    Html.text (toString ("Spencer" ~= "Holly"))
