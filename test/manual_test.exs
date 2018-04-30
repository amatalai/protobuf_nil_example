defmodule ManualTest do
  use ExUnit.Case

  test "'b.a || true' can return true" do
    assert Manual.example() == true
  end
end
