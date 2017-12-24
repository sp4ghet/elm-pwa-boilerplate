module Top.State exposing (init, update)

import Top.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SomeMsg ->
            ( model, Cmd.none )
