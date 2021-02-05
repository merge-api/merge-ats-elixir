# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Mergee.Api.Candidates do
  @moduledoc """
  API calls for all endpoints tagged `Candidates`.
  """

  alias Mergee.Connection
  import Mergee.RequestBuilder


  @doc """
  Returns a list of `Candidate` objects.

  ## Parameters

  - connection (Mergee.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :cursor (String.t): The pagination cursor value.
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_id (String.t): The API provider's ID for the given object.
  ## Returns

  {:ok, %Mergee.Model.PaginatedCandidateList{}} on success
  {:error, info} on failure
  """
  @spec candidates_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Mergee.Model.PaginatedCandidateList.t} | {:error, Tesla.Env.t}
  def candidates_list(connection, x_account_token, opts \\ []) do
    optional_params = %{
      :"created_after" => :query,
      :"created_before" => :query,
      :"cursor" => :query,
      :"expand" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/candidates")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Mergee.Model.PaginatedCandidateList{}}
    ])
  end

  @doc """
  Returns a `Candidate` object with the given `id`.

  ## Parameters

  - connection (Mergee.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  ## Returns

  {:ok, %Mergee.Model.Candidate{}} on success
  {:error, info} on failure
  """
  @spec candidates_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Mergee.Model.Candidate.t} | {:error, Tesla.Env.t}
  def candidates_retrieve(connection, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/candidates/#{id}")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Mergee.Model.Candidate{}}
    ])
  end
end
