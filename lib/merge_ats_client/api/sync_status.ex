# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.SyncStatus do
  @moduledoc """
  API calls for all endpoints tagged `SyncStatus`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Get syncing status.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MergeATSClient.Model.SyncStatus{}} on success
  {:error, info} on failure
  """
  @spec sync_status_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.SyncStatus.t} | {:error, Tesla.Env.t}
  def sync_status_retrieve(connection, authorization, x_account_token, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sync-status")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.SyncStatus{}}
    ])
  end
end
