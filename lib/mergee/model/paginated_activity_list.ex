# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Mergee.Model.PaginatedActivityList do
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
    :"results" => [Activity] | nil
  }
end

defimpl Poison.Decoder, for: Mergee.Model.PaginatedActivityList do
  import Mergee.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, Mergee.Model.Activity, options)
  end
end

