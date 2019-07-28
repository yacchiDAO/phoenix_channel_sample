defmodule ChannelWeb.PageController do
  use ChannelWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
