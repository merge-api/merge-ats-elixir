# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Mergee.Api.Offers do
  @moduledoc """
  API calls for all endpoints tagged `Offers`.
  """

  alias Mergee.Connection
  import Mergee.RequestBuilder


  @doc """
  Returns a list of `Offer` objects.

  ## Parameters

  - connection (Mergee.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - opts (KeywordList): [optional] Optional parameters
    - :application_id (String.t): If provided, will only return offers for this application.
    - :created_after (DateTime.t): If provided, will only return objects created after this datetime.
    - :created_before (DateTime.t): If provided, will only return objects created before this datetime.
    - :creator_id (String.t): If provided, will only return offers created by this user.
    - :cursor (String.t): The pagination cursor value.
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    - :modified_after (DateTime.t): If provided, will only return objects modified after this datetime.
    - :modified_before (DateTime.t): If provided, will only return objects modified before this datetime.
    - :page_size (integer()): Number of results to return per page.
    - :remote_id (String.t): The API provider's ID for the given object.
  ## Returns

  {:ok, %Mergee.Model.PaginatedOfferList{}} on success
  {:error, info} on failure
  """
  @spec offers_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Mergee.Model.PaginatedOfferList.t} | {:error, Tesla.Env.t}
  def offers_list(connection, x_account_token, opts \\ []) do
    optional_params = %{
      :"application_id" => :query,
      :"created_after" => :query,
      :"created_before" => :query,
      :"creator_id" => :query,
      :"cursor" => :query,
      :"expand" => :query,
      :"modified_after" => :query,
      :"modified_before" => :query,
      :"page_size" => :query,
      :"remote_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/offers")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Mergee.Model.PaginatedOfferList{}}
    ])
  end

  @doc """
  Returns an `Offer` object with the given `id`.

  ## Parameters

  - connection (Mergee.Connection): Connection to server
  - x_account_token (String.t): Token identifying the end user.
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :expand (String.t): Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  ## Returns

  {:ok, %Mergee.Model.Offer{}} on success
  {:error, info} on failure
  """
  @spec offers_retrieve(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Mergee.Model.Offer.t} | {:error, Tesla.Env.t}
  def offers_retrieve(connection, x_account_token, id, opts \\ []) do
    optional_params = %{
      :"expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/offers/#{id}")
    |> add_param(:headers, :"X-Account-Token", x_account_token)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Mergee.Model.Offer{}}
    ])
  end
end
