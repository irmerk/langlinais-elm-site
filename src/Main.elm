module Main exposing (..)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Url


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )
--   case msg of
--     LinkClicked urlRequest ->
--       case urlRequest of
--         Browser.Internal url ->
--           ( model, Nav.pushUrl model.key (Url.toString url) )

--     UrlChanged url ->
--       ( { model | url = url }
--       , Cmd.none
--       )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "sideBar" ]   
        [ a [ href "https://jolenelanglinais.com" ] [ img [ src "/headshot.jpg", class "headshot", alt "Headshot Image" ] [] ] 
        , a [ href "https://jolenelanglinais.com" ] [ h1 [] [ text "Jolene Langlinais" ] ] 
        , p []
        [ text "A full stack software engineer at "
        , a [ href "https://clause.io" , attribute "rel" "noopener" , target "_blank" , class "headerLink" ] [ text "Clause.io"] 
        , text " and maintainer at the "
        , a [ href "https://www.accordproject.org" , attribute "rel" "noopener" , target "_blank" , class "headerLink"  ] [ text "Accord Project"] 
        , text ", creating sophisticated systems with code and design."
        ]
        , div [ class "socialLink" ] [
            a [ href "https://www.linkedin.com/in/jolene-langlinais/" , attribute "rel" "noopener" , attribute "aria-label" "LinkedIn" , target "_blank" ] 
              [ i [ class "fa fa-linkedin" ] []  ]
           , a [ href "https://twitter.com/jolanglinais" , attribute "rel" "noopener" , attribute "aria-label" "Twitter" , target "_blank" ]
               [ i [ class "fa fa-twitter" ] []  ]
           , a [ href "https://medium.com/@jolene.langlinais" , attribute "rel" "noopener" , attribute "aria-label" "Medium" , target "_blank" ]
               [ i [ class "fa fa-medium" ] []  ]
           , a [ href "https://github.com/irmerk" , attribute "rel" "noopener" , attribute "aria-label" "GitHub" , target "_blank" ]
               [ i [ class "fa fa-github" ] [] ]
        ]
        -- , div [ class "navLink" ] [
        --     a [ href "resume" ] [ text "Resume" ] 
        -- ]
        -- , div [ class "navLink" ] [
        --     a [ href "projects" ] [ text "Projects" ] 
        -- ]
        -- , div [ class "navLink" ] [
        --     a [ href "blog" ] [ text "Blog" ] 
        -- ]
    ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
