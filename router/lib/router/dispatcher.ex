defmodule Router.Dispatcher do
  use Plug.Router

  if Mix.env() == :dev do
    use Plug.Debugger
  end

  plug(:match)
  plug(:dispatch)

  forward("/alice", to: Alice.Plug)
  forward("/bob", to: Bob.Plug)
end
