defmodule ApiWeb.ClickToCallView do
  use ApiWeb, :view

  def render("calls.json", %{calls: calls}) do
    %{data: render_many(calls, ApiWeb.ClickToCallView, "call.json")}
  end
  
  def render("call.json", %{call: call}) do
    %{data: render_one(call, ApiWeb.ClickToCallView, "call.json")}
  end
  
  def render("call.json", %{call: call}) do
    %{
      uuid: call.uuid,
      status: call.status,
      call_start: call.call_start,
      call_end: call.call_end,
      extension: call.extension,
      phone_number: call.phone_number
    }
  end
end
