# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.AccountExtended do
  @moduledoc """
  Represents an account with all data available. If your api response is missing some of these fields, there is a good chance you are using a route that returns `Account` instances instead of these.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :account_number,
    :status,
    :crypto_status,
    :kyc_result,
    :currency,
    :last_equity,
    :created_at,
    :contact,
    :identity,
    :disclosures,
    :agreements,
    :documents,
    :trusted_contact,
    :account_name,
    :account_type,
    :custodial_account_type,
    :minor_identity,
    :trading_configurations
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :account_number => String.t | nil,
    :status => BrokerAPI.Model.AccountStatus.t,
    :crypto_status => BrokerAPI.Model.AccountStatus.t | nil,
    :kyc_result => BrokerAPI.Model.KycResult.t | nil,
    :currency => String.t,
    :last_equity => String.t,
    :created_at => DateTime.t,
    :contact => BrokerAPI.Model.Contact.t | nil,
    :identity => BrokerAPI.Model.Identity.t | nil,
    :disclosures => BrokerAPI.Model.Disclosures.t | nil,
    :agreements => [BrokerAPI.Model.Agreement.t] | nil,
    :documents => [BrokerAPI.Model.ApplicationDocument.t] | nil,
    :trusted_contact => BrokerAPI.Model.TrustedContact.t | nil,
    :account_name => String.t | nil,
    :account_type => BrokerAPI.Model.AccountType.t,
    :custodial_account_type => String.t | nil,
    :minor_identity => BrokerAPI.Model.CustodialAccountMinorIdentity.t | nil,
    :trading_configurations => BrokerAPI.Model.AccountConfigurations.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:status, :struct, BrokerAPI.Model.AccountStatus)
     |> Deserializer.deserialize(:crypto_status, :struct, BrokerAPI.Model.AccountStatus)
     |> Deserializer.deserialize(:kyc_result, :struct, BrokerAPI.Model.KycResult)
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:contact, :struct, BrokerAPI.Model.Contact)
     |> Deserializer.deserialize(:identity, :struct, BrokerAPI.Model.Identity)
     |> Deserializer.deserialize(:disclosures, :struct, BrokerAPI.Model.Disclosures)
     |> Deserializer.deserialize(:agreements, :list, BrokerAPI.Model.Agreement)
     |> Deserializer.deserialize(:documents, :list, BrokerAPI.Model.ApplicationDocument)
     |> Deserializer.deserialize(:trusted_contact, :struct, BrokerAPI.Model.TrustedContact)
     |> Deserializer.deserialize(:account_type, :struct, BrokerAPI.Model.AccountType)
     |> Deserializer.deserialize(:minor_identity, :struct, BrokerAPI.Model.CustodialAccountMinorIdentity)
     |> Deserializer.deserialize(:trading_configurations, :struct, BrokerAPI.Model.AccountConfigurations)
  end
end

