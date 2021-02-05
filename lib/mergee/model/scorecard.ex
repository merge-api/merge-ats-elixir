# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Mergee.Model.Scorecard do
  @moduledoc """
  # The Scorecard Object ### Description The `Scorecard` object is used to represent a Scorecard for an interview  ### Usage Example Fetch from the `LIST Application` endpoint and filter by `application` to show all scorecard for an applicant.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"remote_id",
    :"application",
    :"interview",
    :"interviewer",
    :"remote_created_at",
    :"submitted_at",
    :"overall_recommendation"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t | nil,
    :"remote_id" => String.t | nil,
    :"application" => String.t | nil,
    :"interview" => String.t | nil,
    :"interviewer" => String.t | nil,
    :"remote_created_at" => DateTime.t | nil,
    :"submitted_at" => DateTime.t | nil,
    :"overall_recommendation" => OverallRecommendationEnum | nil
  }
end

defimpl Poison.Decoder, for: Mergee.Model.Scorecard do
  import Mergee.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"overall_recommendation", :struct, Mergee.Model.OverallRecommendationEnum, options)
  end
end

