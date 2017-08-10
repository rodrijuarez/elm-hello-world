module Main exposing (..)

import Html exposing (..)


view =
    div []
        [ h1 [] [ text "Face generator" ]
        , button [] [ text "Face me" ]
        ]


main =
    view
