# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Mergee.Api.AccountToken do
  @moduledoc """
  API calls for all endpoints tagged `AccountToken`.
  """

  alias Mergee.Connection
  import Mergee.RequestBuilder


  @doc """
  Returns the account token for the end user with the provided public token.

  ## Parameters

  - connection (Mergee.Connection): Connection to server
  - public_token (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %Mergee.Model.AccountToken{}} on success
  {:error, info} on failure
  """
  @spec account_token_retrieve(Tesla.Env.client, String.t, keyword()) :: {:ok, Mergee.Model.AccountToken.t} | {:error, Tesla.Env.t}
  def account_token_retrieve(connection, public_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/account-token/#{public_token}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Mergee.Model.AccountToken{}}
    ])
  end
end
