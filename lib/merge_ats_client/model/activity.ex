# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.Activity do
  @moduledoc """
  # The Activity Object ### Description The `Activity` object is used to represent an activity performed by a user.  ### Usage Example Fetch from the `LIST Activities` endpoint and filter by `ID` to show all activities.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"user",
    :"remote_created_at",
    :"activity_type",
    :"subject",
    :"body",
    :"visibility",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"user" => String.t | nil,
    :"remote_created_at" => DateTime.t | nil,
    :"activity_type" => ActivityTypeEnum | nil,
    :"subject" => String.t | nil,
    :"body" => String.t | nil,
    :"visibility" => VisibilityEnum | nil,
    :"remote_data" => [MergeATSClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.Activity do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"activity_type", :struct, MergeATSClient.Model.ActivityTypeEnum, options)
    |> deserialize(:"visibility", :struct, MergeATSClient.Model.VisibilityEnum, options)
    |> deserialize(:"remote_data", :list, MergeATSClient.Model.RemoteData, options)
  end
end

