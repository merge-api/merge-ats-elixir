# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MergeATSClient.Api.Interviews do
  @moduledoc """
  API calls for all endpoints tagged `Interviews`.
  """

  alias MergeATSClient.Connection
  import MergeATSClient.RequestBuilder


  @doc """
  Creates a `ScheduledInterview` object with the given values.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - remote_user_id (String.t): The ID of the RemoteUser deleting the resource. This can be found in the ID field (not remote_id) in the RemoteUser table.
  - opts (KeywordList): [optional] Optional parameters
    - :run_async (boolean()): Whether or not third-party updates should be run asynchronously.
    - :body (ScheduledInterviewRequest): 
  ## Returns

  {:ok, MergeATSClient.Model.ScheduledInterview.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec interviews_create(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.ScheduledInterview.t} | {:error, Tesla.Env.t}
  def interviews_create(connection, authorization, x_account_token, remote_user_id, opts \\ []) do
    optional_params = %{
      :"run_async" => :query,
      :body => :body
    }
    %{}
    |> method(:post)
    |> url("/interviews")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_param(:query, :"remote_user_id", remote_user_id)
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 201, %MergeATSClient.Model.ScheduledInterview{}}
    ])
  end

  @doc """
  Returns a list of `ScheduledInterview` objects.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :application_id (String.t): If provided, will only return interviews for this application.
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
    - :job_interview_stage_id (String.t): If provided, will only return interviews at this stage.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :organizer_id (String.t): If provided, will only return interviews organized by this user.
    - :page_size (integer()): Number of results to return per page.
    - :remote_id (String.t): The API provider's ID for the given object.
  ## Returns

  {:ok, MergeATSClient.Model.PaginatedScheduledInterviewList.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec interviews_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.PaginatedScheduledInterviewList.t} | {:error, Tesla.Env.t}
  def interviews_list(connection, authorization, x_account_token, opts \\ []) do
    optional_params = %{
      :"application_id" => :query,
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"expand" => :query,
      :"include_remote_data" => :query,
      :"job_interview_stage_id" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"organizer_id" => :query,
      :"page_size" => :query,
      :"remote_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/interviews")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.PaginatedScheduledInterviewList{}}
    ])
  end

  @doc """
  Returns a `ScheduledInterview` object with the given `id`.

  ## Parameters

  - connection (MergeATSClient.Connection): Connection to server
  - authorization (String.t): Should include 'Bearer ' followed by your production API Key.
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :include_remote_data (boolean()): Whether to include the original data Merge fetched from the third-party to produce these models.
  ## Returns

  {:ok, MergeATSClient.Model.ScheduledInterview.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec interviews_retrieve(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, MergeATSClient.Model.ScheduledInterview.t} | {:error, Tesla.Env.t}
  def interviews_retrieve(connection, authorization, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"expand" => :query,
      :"include_remote_data" => :query
    }
    %{}
    |> method(:get)
    |> url("/interviews/#{id}")
    |> add_param(:headers, :"Authorization", authorization)
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MergeATSClient.Model.ScheduledInterview{}}
    ])
  end
end
