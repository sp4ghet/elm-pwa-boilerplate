module State exposing (init, update)

import Types exposing (..)
import Routing exposing (parseLocation)
import Navigation exposing (Location)


-- SubPages

import Top.State as Top


init : Location -> ( Model, Cmd Msg )
init location =
    let
        route : Routes
        route =
            parseLocation location

        ( topmodel, topcmd ) =
            Top.init
    in
        ( Model
            route
            topmodel
        , case route of
            Top ->
                Cmd.map TopMsg topcmd

            NotFoundRoute ->
                Cmd.none
        )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TopMsg msg ->
            let
                ( newTopModel, topCmd ) =
                    Top.update msg model.top
            in
                ( { model | top = newTopModel }, Cmd.map TopMsg topCmd )

        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
