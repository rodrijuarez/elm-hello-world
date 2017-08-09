module Main exposing (..)

import Html exposing (..)

import Html.Attributes exposing (..)

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

renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b []
            [text <| toString <| ship.cost]
        ]

renderShips ships =
    div [
        style 
        [ ("font-familty", "-apple-system")
        , ("padding", "1em")
        ]
    ]
    [ h1 [] 
        [ text "Ships"
        ]
    , ul [] (List.map renderShip ships)
    ]

main = renderShips ships