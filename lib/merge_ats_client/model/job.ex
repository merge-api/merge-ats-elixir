# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.Job do
  @moduledoc """
  # The Job Object ### Description The `Job` object is used to represent a Job offering at a company.  ### Usage Example Fetch from the `LIST Jobs` endpoint to show all job postings.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"name",
    :"description",
    :"status",
    :"remote_created_at",
    :"remote_updated_at",
    :"confidential",
    :"departments",
    :"offices",
    :"hiring_managers",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"name" => String.t | nil,
    :"description" => String.t | nil,
    :"status" => JobStatusEnum | nil,
    :"remote_created_at" => DateTime.t | nil,
    :"remote_updated_at" => DateTime.t | nil,
    :"confidential" => boolean() | nil,
    :"departments" => [String.t] | nil,
    :"offices" => [String.t] | nil,
    :"hiring_managers" => [String.t] | nil,
    :"remote_data" => [RemoteData] | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.Job do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, MergeATSClient.Model.JobStatusEnum, options)
    |> deserialize(:"remote_data", :list, MergeATSClient.Model.RemoteData, options)
  end
end

