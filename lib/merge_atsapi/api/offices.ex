# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSAPI.Api.Offices do
  @moduledoc """
  API calls for all endpoints tagged `Offices`.
  """

  alias MergeATSAPI.Connection
  import MergeATSAPI.RequestBuilder


  @doc """
  Returns a list of `Office` objects.

  ## Parameters

  - connection (MergeATSAPI.Connection): Connection to server
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

  {:ok, %MergeATSAPI.Model.PaginatedOfficeList{}} on success
  {:error, info} on failure
  """
  @spec offices_list(Tesla.Env.client, String.t, keyword()) :: {:ok, MergeATSAPI.Model.PaginatedOfficeList.t} | {:error, Tesla.Env.t}
  def offices_list(connection, x_account_token, opts \\ []) do
    optional_params = %{
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/offices")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSAPI.Model.PaginatedOfficeList{}}
    ])
  end

  @doc """
  Returns an `Office` object with the given `id`.

  ## Parameters

  - connection (MergeATSAPI.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MergeATSAPI.Model.Office{}} on success
  {:error, info} on failure
  """
  @spec offices_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeATSAPI.Model.Office.t} | {:error, Tesla.Env.t}
  def offices_retrieve(connection, x_account_token, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/offices/#{id}")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSAPI.Model.Office{}}
    ])
  end
end
