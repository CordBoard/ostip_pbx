defmodule ApiWeb.Router do
  use ApiWeb, :router

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

  scope "/pbx/v1/clicktocall", ApiWeb do
    pipe_through :api
    get "/pbx/v1/clicktocall", ClickToCallController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ApiWeb do
  #   pipe_through :api
  # end
  def swagger_info do
    %{    
      info: %{
        version: "1.0",
        title: "OSTIP PBX API"
        #host: "where-our-app.is.hosted"
      }
    }
  end
end
