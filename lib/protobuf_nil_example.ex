defmodule ProtobufNilExample do
  defmodule Data do
    @type t :: %Data{
            b: Example.B.t()
          }

    defstruct [:b]

    @spec new() :: t
    def new() do
      %Data{
        b: Example.B.new()
      }
    end
  end

  @spec example :: true
  def example do
    Data.new().b.a || true
  end
end
