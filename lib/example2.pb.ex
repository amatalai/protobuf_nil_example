defmodule Example2.A do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }
  defstruct [:text]

  field(:text, 1, type: :string)
end

defmodule Example2.B do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          # nil added manually
          a: Example2.A.t() | nil
        }
  defstruct [:a]

  field(:a, 1, type: Example.A)
end
