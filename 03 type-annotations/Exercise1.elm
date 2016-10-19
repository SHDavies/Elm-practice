module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


setFreeQty : Int -> Int -> Item -> Item
setFreeQty minQty freeAmt item =
    if item.qty >= minQty && item.freeQty == 0 then
        { item | freeQty = freeAmt }
    else
        item


main : Html.Html msg
main =
    Html.text (toString (List.map ((setFreeQty 10 3) >> (setFreeQty 5 1)) cart))
