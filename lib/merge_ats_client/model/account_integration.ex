# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.AccountIntegration do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"categories",
    :"image",
    :"square_image",
    :"color"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"categories" => String.t | nil,
    :"image" => String.t | nil,
    :"square_image" => String.t | nil,
    :"color" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.AccountIntegration do
  def decode(value, _options) do
    value
  end
end

