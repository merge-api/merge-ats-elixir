# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.Jobs do
  @moduledoc """
  API calls for all endpoints tagged `Jobs`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Returns a list of `Job` objects.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_id (String.t): The API provider's ID for the given object.
    - :status (String.t): If provided, will only return jobs with this status. Options: ('OPEN', 'CLOSED', 'DRAFT', 'ARCHIVED', 'PENDING')
  ## Returns

  {:ok, MergeATSClient.Model.PaginatedJobList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec jobs_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.PaginatedJobList.t} | {:error, Tesla.Env.t}
  def jobs_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"expand" => :query,
      :"include_remote_data" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_id" => :query,
      :"status" => :query
    }
    %{}
    |> method(:get)
    |> url("/jobs")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.PaginatedJobList{}}
    ])
  end

  @doc """
  Returns a `Job` object with the given `id`.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
  ## Returns

  {:ok, MergeATSClient.Model.Job.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec jobs_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.Job.t} | {:error, Tesla.Env.t}
  def jobs_retrieve(connection, authorization, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"expand" => :query,
      :"include_remote_data" => :query
    }
    %{}
    |> method(:get)
    |> url("/jobs/#{id}")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.Job{}}
    ])
  end
end
