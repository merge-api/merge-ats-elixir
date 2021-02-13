# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.JobInterviewStageChange do
  @moduledoc """
  # The JobInterviewStageChange Object ### Description The `JobInterviewStageChange` object is used to represent a change in interview stage for an Application  ### Usage Example Fetch from the `LIST JobInterviewStageChange` endpoint and filter by `application` to show all stage changes for an applicant.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"to_stage",
    :"remote_updated_at"
  ]

  @type t :: %__MODULE__{
    :"to_stage" => String.t | nil,
    :"remote_updated_at" => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.JobInterviewStageChange do
  def decode(value, _options) do
    value
  end
end
