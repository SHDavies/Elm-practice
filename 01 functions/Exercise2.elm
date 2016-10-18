module Main exposing (..)

import Html
import String


uppercase str =
    if String.length str > 10 then
        String.toUpper str
    else
        str


main =
    Html.text (uppercase "Spencer is so cool")
