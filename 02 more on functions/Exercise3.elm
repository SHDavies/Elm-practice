module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main =
    "Spencer is the best ever"
        |> wordCount
        |> toString
        |> Html.text
