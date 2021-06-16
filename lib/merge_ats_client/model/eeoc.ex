# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.Eeoc do
  @moduledoc """
  # The EEOC Object ### Description The `EEOC` object is used to represent the Equal Employment Opportunity Commission information for a candidate.  ### Usage Example Fetch from the `LIST EEOCs` endpoint and filter by `candidate` to show all EEOC information for a candidate.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"candidate",
    :"submitted_at",
    :"race",
    :"gender",
    :"veteran_status",
    :"disability_status",
    :"remote_data"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"candidate" => String.t | nil,
    :"submitted_at" => DateTime.t | nil,
    :"race" => RaceEnum | nil,
    :"gender" => GenderEnum | nil,
    :"veteran_status" => VeteranStatusEnum | nil,
    :"disability_status" => DisabilityStatusEnum | nil,
    :"remote_data" => [MergeATSClient.Model.RemoteData.t] | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.Eeoc do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"race", :struct, MergeATSClient.Model.RaceEnum, options)
    |> deserialize(:"gender", :struct, MergeATSClient.Model.GenderEnum, options)
    |> deserialize(:"veteran_status", :struct, MergeATSClient.Model.VeteranStatusEnum, options)
    |> deserialize(:"disability_status", :struct, MergeATSClient.Model.DisabilityStatusEnum, options)
    |> deserialize(:"remote_data", :list, MergeATSClient.Model.RemoteData, options)
  end
end

