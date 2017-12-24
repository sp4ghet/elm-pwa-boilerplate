module Top.View exposing (root)

import Html exposing (..)
import Html.Attributes exposing (..)
import Top.Types exposing (..)


root : Model -> Html Msg
root model =
    div [ class "text" ] [ text "This is the top page." ]
