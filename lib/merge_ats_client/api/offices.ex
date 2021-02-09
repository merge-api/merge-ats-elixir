# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.Offices do
  @moduledoc """
  API calls for all endpoints tagged `Offices`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Returns a list of `Office` objects.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_id (String.t): The API provider's ID for the given object.
  ## Returns

  {:ok, %MergeATSClient.Model.PaginatedOfficeList{}} on success
  {:error, info} on failure
  """
  @spec offices_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.PaginatedOfficeList.t} | {:error, Tesla.Env.t}
  def offices_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_id" => :query
    }
    %{headers: [{"Authorization",authorization}, {"X-Account-Token",x_account_token}]}
    |> method(:get)
    |> url("/offices")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.PaginatedOfficeList{}}
    ])
  end

  @doc """
  Returns an `Office` object with the given `id`.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MergeATSClient.Model.Office{}} on success
  {:error, info} on failure
  """
  @spec offices_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.Office.t} | {:error, Tesla.Env.t}
  def offices_retrieve(connection, authorization, x_account_token, id, _opts \\ []) do
    %{headers: [{"Authorization",authorization}, {"X-Account-Token",x_account_token}]}
    |> method(:get)
    |> url("/offices/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.Office{}}
    ])
  end
end
