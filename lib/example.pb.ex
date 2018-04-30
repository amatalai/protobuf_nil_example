defmodule Example.A do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }
  defstruct [:text]

  field(:text, 1, type: :string)
end

defmodule Example.B do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          a: Example.A.t()
        }
  defstruct [:a]

  field(:a, 1, type: Example.A)
end
