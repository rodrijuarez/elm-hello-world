module Main exposing (..)
import Html exposing (text)

type alias Person = 
    { name: String
    , age: Int
    }


people =
    [{
        name = "Legolas",
        age = 31
    }, {
        name = "Aragon",
        age = 40
    }, {
        name = "Gandalf",
        age = 60
    }]

main = 
    text <| toString <| people