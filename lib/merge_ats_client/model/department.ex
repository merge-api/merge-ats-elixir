# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.Department do
  @moduledoc """
  # The Department Object ### Description The `Department` object is used to represent a department within a company.  ### Usage Example Fetch from the `LIST Departments` endpoint and view the departments within a company.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"name",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"name" => String.t | nil,
    :"remote_data" => [MergeATSClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.Department do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"remote_data", :list, MergeATSClient.Model.RemoteData, options)
  end
end

