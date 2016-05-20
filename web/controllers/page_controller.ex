defmodule Debate.PageController do
  use Debate.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
