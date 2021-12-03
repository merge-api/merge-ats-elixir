# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.DeleteAccount do
  @moduledoc """
  API calls for all endpoints tagged `DeleteAccount`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Delete a linked account.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_account_create(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_account_create(connection, x_account_token, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/delete-account")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
