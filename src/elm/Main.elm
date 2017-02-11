import Html exposing (div, program, text, Html)


main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL
type alias Model =
  { text : String
  }

init : (Model, Cmd Msg)
init =
  (Model "Hello Convolution!", Cmd.none)


-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- UPDATE
type Msg
  = Noop

update : Msg -> Model -> (Model, Cmd Msg)
update msg model = (model, Cmd.none)


view : Model -> Html Msg
view model =
  div []
    [ text model.text
    ]
