# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSAPI.Model.LinkToken do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"link_token",
    :"integration_name"
  ]

  @type t :: %__MODULE__{
    :"link_token" => String.t,
    :"integration_name" => String.t
  }
end

defimpl Poison.Decoder, for: MergeATSAPI.Model.LinkToken do
  def decode(value, _options) do
    value
  end
end

