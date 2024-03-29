# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.Passthrough do
  @moduledoc """
  API calls for all endpoints tagged `Passthrough`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Pull data from an endpoint not currently supported by Merge.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - data_passthrough_request (DataPassthroughRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeATSClient.Model.RemoteResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec passthrough_create(Tesla.Env.client, String.t, String.t, MergeATSClient.Model.DataPassthroughRequest.t, keyword()) :: {:ok, MergeATSClient.Model.RemoteResponse.t} | {:error, Tesla.Env.t}
  def passthrough_create(connection, authorization, x_account_token, data_passthrough_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/passthrough")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_param(:body, :body, data_passthrough_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.RemoteResponse{}}
    ])
  end
end
