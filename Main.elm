module Main exposing (..)
import Html exposing (text)

type alias Ship =
    { name: String
    , model: String
    , cost: Int
    }

ships =
    [ { name = "X-Wing", cost = 100}
    , { name = "Millenium Falcon", cost = 200 }
    , { name = "Death Star", cost = 300}
    ]

main = 
    text 
    <| toString 
    <| ships