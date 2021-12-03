# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.Issues do
  @moduledoc """
  API calls for all endpoints tagged `Issues`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Gets issues.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :account_token (String.t): account_token
    - :cursor (integer()): The pagination cursor value.
    - :end_date (String.t): If included, will only include issues whose most recent action occurred before this time
    - :end_user_organization_name (String.t): end_user_organization_name
    - :include_muted (String.t): If True, will include muted issues
    - :integration_name (String.t): integration_name
    - :page_size (integer()): Number of results to return per page.
    - :start_date (String.t): If included, will only include issues whose most recent action occurred after this time
    - :status (String.t): status
  ## Returns

  {:ok, MergeATSClient.Model.PaginatedIssueList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec issues_list(Tesla.Env.client, keyword()) :: {:ok, MergeATSClient.Model.PaginatedIssueList.t} | {:error, Tesla.Env.t}
  def issues_list(connection, opts \\ []) do
    optional_params = %{
      :"account_token" => :query,
      :"cursor" => :query,
      :"end_date" => :query,
      :"end_user_organization_name" => :query,
      :"include_muted" => :query,
      :"integration_name" => :query,
      :"page_size" => :query,
      :"start_date" => :query,
      :"status" => :query
    }
    %{}
    |> method(:get)
    |> url("/issues")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.PaginatedIssueList{}}
    ])
  end

  @doc """
  Get a specific issue.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, MergeATSClient.Model.Issue.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec issues_retrieve(Tesla.Env.client, String.t, keyword()) :: {:ok, MergeATSClient.Model.Issue.t} | {:error, Tesla.Env.t}
  def issues_retrieve(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/issues/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.Issue{}}
    ])
  end
end
