defmodule ApiWeb.ClickToCallController do
  use ApiWeb, :controller

  alias Dal.PBX.{Repo, Call}


  def index(conn, _params) do
    calls = Repo.all(Calls)
    render(conn, "calls.json", calls: calls)
  end
end
