defmodule DalTest do
  use ExUnit.Case
  doctest Dal

  test "greets the world" do
    assert Dal.hello() == :world
  end
end
