module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


numbers =
    [ 1, 2, 3, 4, 5 ]


printNumbers : Int -> Html msg
printNumbers int =
    ul [] [ text <| toString <| int ]


fruits =
    [ { name = "Orange" }, { name = "Banana" } ]


main =
    ul [] (List.map printNumbers numbers)
