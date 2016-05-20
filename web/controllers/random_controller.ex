defmodule Debate.RandomController do
  use Debate.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def random(conn, %{"session" => session_params}) do
  	list = [session_params["grupo1"], session_params["grupo2"], session_params["grupo3"], session_params["grupo4"]]
    :random.seed(:erlang.now)
    newlist = Enum.take_random(list, 4)
    IO.puts newlist
    render(conn, "random.html", newlist: newlist)
  end
end
