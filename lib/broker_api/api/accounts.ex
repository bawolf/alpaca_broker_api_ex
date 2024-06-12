# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias BrokerAPI.Connection
  import BrokerAPI.RequestBuilder

  @doc """
  Create an account
  Submit an account application with KYC information. This will create a trading account for the end user. The account status may or may not be ACTIVE immediately and you will receive account status updates on the event API. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_creation_request` (AccountCreationRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.Account.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_account(Tesla.Env.client, BrokerAPI.Model.AccountCreationRequest.t, keyword()) :: {:ok, nil} | {:ok, BrokerAPI.Model.Account.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def create_account(connection, account_creation_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/accounts")
      |> add_param(:body, :body, account_creation_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Account},
      {400, false},
      {409, false},
      {422, false}
    ])
  end

  @doc """
  Create an ACH Relationship
  Create a new ACHRelationship for an account  If successful, will return 200 code with a newly created ACH Relationship entity.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `create_ach_relationship_request` (CreateAchRelationshipRequest): Create ACH Relationship 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.AchRelationship.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_ach_relationship_for_account(Tesla.Env.client, String.t, BrokerAPI.Model.CreateAchRelationshipRequest.t, keyword()) :: {:ok, BrokerAPI.Model.Error.t} | {:ok, BrokerAPI.Model.AchRelationship.t} | {:error, Tesla.Env.t}
  def create_ach_relationship_for_account(connection, account_id, create_ach_relationship_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/accounts/#{account_id}/ach_relationships")
      |> add_param(:body, :body, create_ach_relationship_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AchRelationship},
      {400, BrokerAPI.Model.Error},
      {401, BrokerAPI.Model.Error},
      {409, BrokerAPI.Model.Error}
    ])
  end

  @doc """
  Create a Bank Relationship for an account
  If successful, retrieves Bank Relationships for an account

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `create_bank_request` (CreateBankRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.Bank.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_recipient_bank(Tesla.Env.client, String.t, BrokerAPI.Model.CreateBankRequest.t, keyword()) :: {:ok, nil} | {:ok, BrokerAPI.Model.Bank.t} | {:error, Tesla.Env.t}
  def create_recipient_bank(connection, account_id, create_bank_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/accounts/#{account_id}/recipient_banks")
      |> add_param(:body, :body, create_bank_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Bank},
      {400, false},
      {409, false}
    ])
  end

  @doc """
  Request a new transfer
  Create a new transfer to an account to fund it.  In the sandbox environment, you can instantly deposit to or withdraw from an account with a virtual money amount. In the production environment, this endpoint is used only for requesting an outgoing (withdrawal) wire transfer at this moment. For the wire transfer (in production), you need to create a bank resource first using the Bank API. For more on how to fund an account in sandbox please check out this tutorial [here](https://alpaca.markets/learn/fund-broker-api/).

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `create_transfer_request` (CreateTransferRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.Transfer.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_transfer_for_account(Tesla.Env.client, String.t, BrokerAPI.Model.CreateTransferRequest.t, keyword()) :: {:ok, BrokerAPI.Model.Transfer.t} | {:error, Tesla.Env.t}
  def create_transfer_for_account(connection, account_id, create_transfer_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/accounts/#{account_id}/transfers")
      |> add_param(:body, :body, create_transfer_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Transfer}
    ])
  end

  @doc """
  Request to close an account
  This operation closes an active account.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_account(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_account(connection, account_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/accounts/#{account_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false}
    ])
  end

  @doc """
  Delete an existing ACH relationship
  Delete an existing ACH relationship for an account

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `ach_relationship_id` (String.t): ACH relationship identifier
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_ach_relationship_from_account(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, BrokerAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def delete_ach_relationship_from_account(connection, account_id, ach_relationship_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/accounts/#{account_id}/ach_relationships/#{ach_relationship_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {404, BrokerAPI.Model.Error}
    ])
  end

  @doc """
  Delete a Bank Relationship for an account
  If successful, deletes Bank Relationship for an account

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `bank_id` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_recipient_bank(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_recipient_bank(connection, account_id, bank_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/accounts/#{account_id}/recipient_banks/#{bank_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {404, false}
    ])
  end

  @doc """
  Request to close a transfer
  Request to close a transfer

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `transfer_id` (String.t): Tranfer identifier
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_transfer(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, BrokerAPI.Model.Error.t} | {:error, Tesla.Env.t}
  def delete_transfer(connection, account_id, transfer_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/v1/accounts/#{account_id}/transfers/#{transfer_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {404, BrokerAPI.Model.Error}
    ])
  end

  @doc """
  Get an account by Id.
  You can query a specific account that you submitted to Alpaca by passing into the query the account_id associated with the account you’re retrieving. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.AccountExtended.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_account(Tesla.Env.client, String.t, keyword()) :: {:ok, BrokerAPI.Model.AccountExtended.t} | {:error, Tesla.Env.t}
  def get_account(connection, account_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/#{account_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AccountExtended}
    ])
  end

  @doc """
  Retrieve ACH Relationships for an account
  Returns a list of ACH Relationships for an account

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters
    - `:statuses` (String.t): Comma-separated status values

  ### Returns

  - `{:ok, [%AchRelationship{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_account_ach_relationships(Tesla.Env.client, String.t, keyword()) :: {:ok, list(BrokerAPI.Model.AchRelationship.t)} | {:error, Tesla.Env.t}
  def get_account_ach_relationships(connection, account_id, opts \\ []) do
    optional_params = %{
      :statuses => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/#{account_id}/ach_relationships")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AchRelationship}
    ])
  end

  @doc """
  Retrieve account activities
  Returns an array of Activities  Notes: * Pagination is handled using the `page_token` and `page_size` parameters. * `page_token` represents the ID of the end of your current page of results.   for example if in your first response the id of the last Activiy item returned in the array was `20220203000000000::045b3b8d-c566-4bef-b741-2bf598dd6ae7`, you'd pass that value as `page_token` to get the next page of results  * If specified with a `direction` of `desc`, for example, the results will end before the activity with the specified ID. * If specified with a `direction` of `asc`, results will begin with the activity immediately after the one specified. * `page_size` is the maximum number of entries to return in the response. * If `date` is not specified, the default and maximum value is 100. * If `date` is specified, the default behavior is to return all results, and there is no maximum page size.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:account_id` (String.t): id of a single account to filter by
    - `:date` (String.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported.
    - `:until` (String.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported.
    - `:after` (String.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported. Cannot be used with date.
    - `:direction` (String.t): The chronological order of response based on the submission time. asc or desc. Defaults to desc.
    - `:page_size` (integer()): The maximum number of entries to return in the response
    - `:page_token` (String.t): The Activity ID of the end of your current page of results. 

  ### Returns

  - `{:ok, [%Activity{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_account_activities(Tesla.Env.client, keyword()) :: {:ok, list(BrokerAPI.Model.Activity.t)} | {:error, Tesla.Env.t}
  def get_account_activities(connection, opts \\ []) do
    optional_params = %{
      :account_id => :query,
      :date => :query,
      :until => :query,
      :after => :query,
      :direction => :query,
      :page_size => :query,
      :page_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/activities")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Activity}
    ])
  end

  @doc """
  Retrieve specific account activities
  Retrieves an Array of Activies by type  Notes: * Pagination is handled using the `page_token` and `page_size` parameters. * `page_token` represents the ID of the end of your current page of results.   for example if in your first response the id of the last Activiy item returned in the array was `20220203000000000::045b3b8d-c566-4bef-b741-2bf598dd6ae7`, you'd pass that value as `page_token` to get the next page of results  * If specified with a `direction` of `desc`, for example, the results will end before the activity with the specified ID. * If specified with a `direction` of `asc`, results will begin with the activity immediately after the one specified. * `page_size` is the maximum number of entries to return in the response. * If `date` is not specified, the default and maximum value is 100. * If `date` is specified, the default behavior is to return all results, and there is no maximum page size.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `activity_type` (String.t): see ActivityType model for details about what the different types mean
  - `opts` (keyword): Optional parameters
    - `:account_id` (String.t): id of a single account to filter by
    - `:date` (DateTime.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported.
    - `:until` (DateTime.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported.
    - `:after` (DateTime.t): Both formats YYYY-MM-DD and YYYY-MM-DDTHH:MM:SSZ supported.
    - `:direction` (String.t): The chronological order of response based on the submission time. asc or desc. Defaults to desc.
    - `:page_size` (integer()): The maximum number of entries to return in the response
    - `:page_token` (String.t): The ID of the end of your current page of results

  ### Returns

  - `{:ok, [%Activity{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_account_activities_by_type(Tesla.Env.client, String.t, keyword()) :: {:ok, list(BrokerAPI.Model.Activity.t)} | {:error, Tesla.Env.t}
  def get_account_activities_by_type(connection, activity_type, opts \\ []) do
    optional_params = %{
      :account_id => :query,
      :date => :query,
      :until => :query,
      :after => :query,
      :direction => :query,
      :page_size => :query,
      :page_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/activities/#{activity_type}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Activity}
    ])
  end

  @doc """
  Get all accounts
  Retrieves all accounts found by the query'

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): Pass space-delimited tokens. The response will contain accounts that match with each of the tokens (logical AND). A match means the token is present in either the account’s associated account number, phone number, name, or e-mail address (logical OR).
    - `:created_after` (DateTime.t): 
    - `:created_before` (DateTime.t): 
    - `:status` (String.t): See the AccountStatus model for values
    - `:sort` (String.t): The chronological order of response based on the submission time. asc or desc. Defaults to desc.
    - `:entities` (String.t): Comma-delimited entity names to include in the response

  ### Returns

  - `{:ok, [%Account{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_accounts(Tesla.Env.client, keyword()) :: {:ok, list(BrokerAPI.Model.Account.t)} | {:error, Tesla.Env.t}
  def get_all_accounts(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :created_after => :query,
      :created_before => :query,
      :status => :query,
      :sort => :query,
      :entities => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Account}
    ])
  end

  @doc """
  Retrieve bank relationships for an account
  Retrieves Bank Relationships for an account

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters
    - `:status` (String.t): 
    - `:bank_name` (String.t): 

  ### Returns

  - `{:ok, [%Bank{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recipient_banks(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, list(BrokerAPI.Model.Bank.t)} | {:error, Tesla.Env.t}
  def get_recipient_banks(connection, account_id, opts \\ []) do
    optional_params = %{
      :status => :query,
      :bank_name => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/#{account_id}/recipient_banks")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Bank},
      {400, false}
    ])
  end

  @doc """
  Retrieve trading details for an account.
  As a broker you can view more trading details about your users.  The response is a Trading Account model.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.TradeAccount.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_trading_account(Tesla.Env.client, String.t, keyword()) :: {:ok, BrokerAPI.Model.TradeAccount.t} | {:error, Tesla.Env.t}
  def get_trading_account(connection, account_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/v1/trading/accounts/#{account_id}/account")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.TradeAccount}
    ])
  end

  @doc """
  Return a list of transfers for an account.
  You can query a list of transfers for an account.   You can filter requested transfers by values such as direction and status. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `opts` (keyword): Optional parameters
    - `:direction` (String.t): INCOMING or OUTGOING
    - `:limit` (integer()): 
    - `:offset` (integer()): 

  ### Returns

  - `{:ok, [%Transfer{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_transfers_for_account(Tesla.Env.client, String.t, keyword()) :: {:ok, list(BrokerAPI.Model.Transfer.t)} | {:error, Tesla.Env.t}
  def get_transfers_for_account(connection, account_id, opts \\ []) do
    optional_params = %{
      :direction => :query,
      :limit => :query,
      :offset => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/accounts/#{account_id}/transfers")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.Transfer}
    ])
  end

  @doc """
  Update an account
  This operation updates account information.  If all parameters are valid and updates have been made, it returns with status code 200. The response is the account model.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `account_update_request` (AccountUpdateRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, BrokerAPI.Model.AccountExtended.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_account(Tesla.Env.client, String.t, BrokerAPI.Model.AccountUpdateRequest.t, keyword()) :: {:ok, BrokerAPI.Model.AccountExtended.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def patch_account(connection, account_id, account_update_request, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/v1/accounts/#{account_id}")
      |> add_param(:body, :body, account_update_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AccountExtended},
      {400, false},
      {422, false}
    ])
  end

  @doc """
  Subscribe to account status events (SSE).
  Events API provide event push as well as historical queries via SSE (server sent events).  Historical events are streamed immediately if queried, and updates are pushed as events occur.  Query Params Rules: - `since` required if `until` specified - `since_id` required if `until_id` specified - `since` and `since_id` can’t be used at the same time Behavior: - if `since` or `since_id` not specified this will not return any historic data - if `until` or `until_id` reached stream will end (status 200)  ---  Note for people using the clients generated from this OAS spec. Currently OAS-3 doesn't have full support for representing SSE style responses from an API, so if you are using a generated client and don't specify a `since` and `until` there is a good chance the generated clients will hang waiting for the response to end.  If you require the streaming capabilities we recommend not using the generated clients for this specific usecase until the OAS-3 standards come to a consensus on how to represent this correcting in OAS-3. 

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:since` (Date.t): Format: YYYY-MM-DD
    - `:until` (Date.t): Format: YYYY-MM-DD
    - `:since_id` (integer()): 
    - `:until_id` (integer()): 

  ### Returns

  - `{:ok, [%AccountStatusEvent{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec suscribe_to_account_status_sse(Tesla.Env.client, keyword()) :: {:ok, list(BrokerAPI.Model.AccountStatusEvent.t)} | {:error, Tesla.Env.t}
  def suscribe_to_account_status_sse(connection, opts \\ []) do
    optional_params = %{
      :since => :query,
      :until => :query,
      :since_id => :query,
      :until_id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/events/accounts/status")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, BrokerAPI.Model.AccountStatusEvent}
    ])
  end

  @doc """
  Upload a document to an already existing account
  Upload a document to be attached to an account.  Documents are binary objects whose contents are encoded in base64. Each encoded content size is limited to 10MB if you use Alpaca for KYCaaS. If you perform your own KYC there are no document size limitations.

  ### Parameters

  - `connection` (BrokerAPI.Connection): Connection to server
  - `account_id` (String.t): Account identifier.
  - `document_upload_request` (DocumentUploadRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upload_doc_to_account(Tesla.Env.client, String.t, BrokerAPI.Model.DocumentUploadRequest.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def upload_doc_to_account(connection, account_id, document_upload_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/v1/accounts/#{account_id}/documents/upload")
      |> add_param(:body, :body, document_upload_request)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {404, false}
    ])
  end
end
