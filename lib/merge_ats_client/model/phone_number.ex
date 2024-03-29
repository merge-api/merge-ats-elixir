# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Model.PhoneNumber do
  @moduledoc """
  # The PhoneNumber Object ### Description The `PhoneNumber` object is used to represent a candidate's phone number.  ### Usage Example Fetch from the `GET Candidate` endpoint and view their phone numbers.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"phone_number_type"
  ]

  @type t :: %__MODULE__{
    :"value" => String.t | nil,
    :"phone_number_type" => PhoneNumberTypeEnum | nil
  }
end

defimpl Poison.Decoder, for: MergeATSClient.Model.PhoneNumber do
  import MergeATSClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"phone_number_type", :struct, MergeATSClient.Model.PhoneNumberTypeEnum, options)
  end
end

