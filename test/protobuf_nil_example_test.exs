defmodule ProtobufNilExampleTest do
  use ExUnit.Case

  test "nil is possible value" do
    assert ProtobufNilExample.example() == true
  end
end
