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

findPerson: String -> List Person -> Maybe Person

findPerson name persons =
    List.foldl
    (\person memo -> case memo of
        Just _ -> memo
        Nothing -> if person.name  == name then
         Just person
         else Nothing
    ) Nothing persons

main = 
    text <| toString <| findPerson "Legolas" people