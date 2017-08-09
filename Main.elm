module Main exposing (..)
import Html exposing (text)
import List

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

names: List Person -> List String

names persons = List.map (\person -> person.name) persons

main = 
    text <| toString <| names people