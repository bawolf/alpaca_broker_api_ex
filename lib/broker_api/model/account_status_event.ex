# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.AccountStatusEvent do
  @moduledoc """
  Represents a change in an Account's status, sent over the events streaming api.  For partners who utilize Alpaca’s KYC service for opening brokerage accounts an additional `kyc_results` object is represented in the account status update events.
  """

  @derive Jason.Encoder
  defstruct [
    :account_id,
    :account_number,
    :status_from,
    :status_to,
    :reason,
    :at,
    :kyc_result,
    :event_id
  ]

  @type t :: %__MODULE__{
    :account_id => String.t,
    :account_number => String.t,
    :status_from => BrokerAPI.Model.AccountStatus.t,
    :status_to => BrokerAPI.Model.AccountStatus.t,
    :reason => String.t,
    :at => String.t,
    :kyc_result => BrokerAPI.Model.KycResult.t | nil,
    :event_id => integer()
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:status_from, :struct, BrokerAPI.Model.AccountStatus)
     |> Deserializer.deserialize(:status_to, :struct, BrokerAPI.Model.AccountStatus)
     |> Deserializer.deserialize(:kyc_result, :struct, BrokerAPI.Model.KycResult)
  end
end

