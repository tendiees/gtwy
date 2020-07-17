defmodule BanccProto.PingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t()
        }
  defstruct [:payload]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 80, 105, 110, 103, 82, 101, 113, 117, 101, 115, 116, 18, 24, 10, 7, 112, 97, 121,
        108, 111, 97, 100, 24, 1, 32, 1, 40, 9, 82, 7, 112, 97, 121, 108, 111, 97, 100>>
    )
  end

  field :payload, 1, type: :string
end

defmodule BanccProto.PingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t()
        }
  defstruct [:payload]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 12, 80, 105, 110, 103, 82, 101, 115, 112, 111, 110, 115, 101, 18, 24, 10, 7, 112, 97,
        121, 108, 111, 97, 100, 24, 1, 32, 1, 40, 9, 82, 7, 112, 97, 121, 108, 111, 97, 100>>
    )
  end

  field :payload, 1, type: :string
end

defmodule BanccProto.Service.Service do
  @moduledoc false
  use GRPC.Service, name: "bancc_proto.Service"

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.ServiceDescriptorProto.decode(
      <<10, 7, 83, 101, 114, 118, 105, 99, 101, 18, 68, 10, 4, 80, 105, 110, 103, 18, 24, 46, 98,
        97, 110, 99, 99, 95, 112, 114, 111, 116, 111, 46, 80, 105, 110, 103, 82, 101, 113, 117,
        101, 115, 116, 26, 25, 46, 98, 97, 110, 99, 99, 95, 112, 114, 111, 116, 111, 46, 80, 105,
        110, 103, 82, 101, 115, 112, 111, 110, 115, 101, 34, 3, 136, 2, 0, 40, 0, 48, 0>>
    )
  end

  rpc :Ping, BanccProto.PingRequest, BanccProto.PingResponse
end

defmodule BanccProto.Service.Stub do
  @moduledoc false
  use GRPC.Stub, service: BanccProto.Service.Service
end
