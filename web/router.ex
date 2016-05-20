defmodule Debate.Router do
  use Debate.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Debate do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/random", RandomController, :index
    post "/results", RandomController, :random
  end

  # Other scopes may use custom stacks.
  # scope "/api", Debate do
  #   pipe_through :api
  # end
end
