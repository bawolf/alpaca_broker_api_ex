# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.CreateAchRelationshipRequest do
  @moduledoc """
  Represents the fields used in creation of a new ACHRelationship.  You can create an ACHRelationship by passing the required fields here or if you have an account with Plaid you can use our integration with Plaid to create a relationship.  Please see the documentation [here](https://alpaca.markets/docs/api-references/broker-api/funding/ach/#plaid-integration-for-bank-transfers) for more info on using Plaid with Alpaca
  """

  @derive Jason.Encoder
  defstruct [
    :account_owner_name,
    :bank_account_type,
    :bank_account_number,
    :bank_routing_number,
    :nickname,
    :processor_token
  ]

  @type t :: %__MODULE__{
    :account_owner_name => String.t,
    :bank_account_type => String.t,
    :bank_account_number => String.t,
    :bank_routing_number => String.t,
    :nickname => String.t | nil,
    :processor_token => String.t | nil
  }

  def decode(value) do
    value
  end
end
