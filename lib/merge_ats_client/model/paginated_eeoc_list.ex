# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.PaginatedEeocList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"next",
    :"previous",
    :"results"
  ]

  @type t :: %__MODULE__{
    :"next" => String.t | nil,
    :"previous" => String.t | nil,
    :"results" => [Eeoc] | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.PaginatedEeocList do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, MergeATSClient.Model.Eeoc, options)
  end
end

