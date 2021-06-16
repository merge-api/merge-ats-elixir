# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.GenerateRemoteKeyRequest do
  @moduledoc """
  # The GenerateRemoteKey Object ### Description The `GenerateRemoteKey` object is used to represent a request for a new remote key.  ### Usage Example Post a `GenerateRemoteKey` to create a new remote key.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.GenerateRemoteKeyRequest do
  def decode(value, _options) do
    value
  end
end

