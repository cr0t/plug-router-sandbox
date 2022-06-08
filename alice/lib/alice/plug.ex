defmodule Alice.Plug do
  import Plug.Conn

  def init([]), do: false

  def call(conn, _opts) do
    conn
    |> send_resp(200, "Hello, I am Alice.Plug")
  end
end
