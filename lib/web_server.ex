defmodule WebServer do
  def start(_type, _args) do
    Plug.Adapters.Cowboy.http(HiPlug, [])
  end
end
