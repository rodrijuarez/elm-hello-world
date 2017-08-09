module Main exposing (..)
import Html exposing (text)

dog =
    { name = "Spock"
    , age = 3
    }

main = 
    text <| dog.name