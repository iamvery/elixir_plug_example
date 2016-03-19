defmodule HiPlug do
  import Plug.Conn

  def init(options) do
    IO.inspect options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hi!")
  end
end
