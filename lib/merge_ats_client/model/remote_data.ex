# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.RemoteData do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"path",
    :"data"
  ]

  @type t :: %__MODULE__{
    :"path" => String.t,
    :"data" => %{optional(String.t) => AnyType} | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.RemoteData do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :map, MergeATSClient.Model.AnyType, options)
  end
end
