# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.TransferStatusEvent do
  @moduledoc """
  Represents a change in a Transfer's status, sent over the events streaming api.
  """

  @derive Jason.Encoder
  defstruct [
    :account_id,
    :at,
    :event_id,
    :status_from,
    :status_to,
    :transfer_id
  ]

  @type t :: %__MODULE__{
    :account_id => String.t,
    :at => DateTime.t,
    :event_id => integer(),
    :status_from => BrokerAPI.Model.TransferStatus.t,
    :status_to => BrokerAPI.Model.TransferStatus.t,
    :transfer_id => String.t
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:at, :datetime, nil)
     |> Deserializer.deserialize(:status_from, :struct, BrokerAPI.Model.TransferStatus)
     |> Deserializer.deserialize(:status_to, :struct, BrokerAPI.Model.TransferStatus)
  end
end

