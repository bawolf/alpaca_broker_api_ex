# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.Transfer do
  @moduledoc """
  Transfers allow you to transfer money/balance into your end customers' account (deposits) or out (withdrawal).  [Main docs here](https://alpaca.markets/docs/api-references/broker-api/funding/transfers/#the-transfer-object)
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :relationship_id,
    :bank_id,
    :account_id,
    :type,
    :status,
    :reason,
    :amount,
    :direction,
    :created_at,
    :updated_at,
    :expires_at,
    :additional_information,
    :hold_until,
    :instant_amount
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :relationship_id => String.t | nil,
    :bank_id => String.t | nil,
    :account_id => String.t,
    :type => BrokerAPI.Model.TransferType.t,
    :status => BrokerAPI.Model.TransferStatus.t,
    :reason => String.t | nil,
    :amount => String.t,
    :direction => BrokerAPI.Model.TransferDirection.t,
    :created_at => DateTime.t,
    :updated_at => DateTime.t | nil,
    :expires_at => DateTime.t | nil,
    :additional_information => String.t | nil,
    :hold_until => DateTime.t | nil,
    :instant_amount => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:type, :struct, BrokerAPI.Model.TransferType)
     |> Deserializer.deserialize(:status, :struct, BrokerAPI.Model.TransferStatus)
     |> Deserializer.deserialize(:direction, :struct, BrokerAPI.Model.TransferDirection)
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
     |> Deserializer.deserialize(:expires_at, :datetime, nil)
     |> Deserializer.deserialize(:hold_until, :datetime, nil)
  end
end

