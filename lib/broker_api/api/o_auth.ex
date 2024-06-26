# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Api.OAuth do
  @moduledoc """
  API calls for all endpoints tagged `OAuth`.
  """

  alias BrokerAPI.Connection
  import BrokerAPI.RequestBuilder

  @doc """
  Authorize an OAuth Token
  The operation issues an OAuth code which can be used in the OAuth code flow. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `o_auth_token_request` (OAuthTokenRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.AuthorizeOAuthTokenResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec authorize_o_auth_token(Tesla.Env.client, BrokerAPI.Model.OAuthTokenRequest.t, keyword()) :: {:ok, BrokerAPI.Model.AuthorizeOAuthTokenResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def authorize_o_auth_token(connection, o_auth_token_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/oauth/authorize")
      |> add_param(:body, :body, o_auth_token_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AuthorizeOAuthTokenResponse},
      {401, false},
      {422, false}
    ])
  end

  @doc """
  Get an OAuth client
  The endpoint returns the details of OAuth client to display in the authorization page. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `client_id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:response_type` (String.t): code or token
    - `:redirect_uri` (String.t): Redirect URI of the OAuth flow
    - `:scope` (String.t): Requested scopes by the OAuth flow

  ### Returns

  - `{:ok, BrokerAPI.Model.OathClientResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_o_auth_client(Tesla.Env.client, String.t, keyword()) :: {:ok, BrokerAPI.Model.OathClientResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_o_auth_client(connection, client_id, opts \\ []) do
    optional_params = %{
      :response_type => :query,
      :redirect_uri => :query,
      :scope => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/oauth/clients/#{client_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.OathClientResponse},
      {401, false}
    ])
  end

  @doc """
  Issue an OAuth token.
  The operation issues an OAuth code which can be used in the OAuth code flow. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `o_auth_token_request` (OAuthTokenRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.IssueOAuthTokenResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec issue_o_auth_token(Tesla.Env.client, BrokerAPI.Model.OAuthTokenRequest.t, keyword()) :: {:ok, BrokerAPI.Model.IssueOAuthTokenResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def issue_o_auth_token(connection, o_auth_token_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/oauth/token")
      |> add_param(:body, :body, o_auth_token_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.IssueOAuthTokenResponse},
      {401, false},
      {422, false}
    ])
  end
end
