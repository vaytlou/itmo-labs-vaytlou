module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--


import Browser
import Html exposing (Html, button, a, h2, h3, div, text)
import Html.Attributes exposing (class, href, title)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model = Int


init : Model
init =
  0



-- UPDATE


type Msg
  = Increment
  | Decrement


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1



-- VIEW


view : Model -> Html Msg
view model =
  div [ class "app" ]
    [ a [ class "app__task", href "https://kodaktor.ru/frmw_006", title "Ссылка на задание" ] [ text "FRMW-006" ]
    , h2 [ class "app__name" ] [ text "ELM" ]
    , div [ class "app__counter" ]
        [ button [ class "app__counter-button app__counter-button--decrement", onClick Decrement ] [ text "-" ]
        , div [ class "app__counter-value" ] [ text (String.fromInt model) ]
        , button [ class "app__counter-button app__counter-button--increment", onClick Increment ] [ text "+" ]
        ]
    ]