defmodule Alice.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    start_server? = Application.fetch_env!(:alice, :server)

    children =
      if start_server? do
        [{Plug.Cowboy, scheme: :http, plug: Alice.Plug, port: 4000}]
      else
        []
      end

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Alice.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
