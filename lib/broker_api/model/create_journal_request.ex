# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.CreateJournalRequest do
  @moduledoc """
  Journals API allows you to move cash or securities from one account to another.  This model represents the fields you can specify when creating a Journal  Fixture Rules  - No Fixtures   - anything below limit is executed immediately   - anything above limit is pending until executed at EOD, - With Fixtures   - any status = rejected will be rejected EOD   - any status = pending will be pending forever
  """

  @derive Jason.Encoder
  defstruct [
    :to_account,
    :from_account,
    :entry_type,
    :amount,
    :symbol,
    :qty,
    :description,
    :transmitter_name,
    :transmitter_account_number,
    :transmitter_address,
    :transmitter_financial_institution,
    :transmitter_timestamp
  ]

  @type t :: %__MODULE__{
    :to_account => String.t,
    :from_account => String.t,
    :entry_type => BrokerAPI.Model.JournalEntryType.t,
    :amount => String.t | nil,
    :symbol => String.t | nil,
    :qty => String.t | nil,
    :description => String.t | nil,
    :transmitter_name => String.t | nil,
    :transmitter_account_number => String.t | nil,
    :transmitter_address => String.t | nil,
    :transmitter_financial_institution => String.t | nil,
    :transmitter_timestamp => DateTime.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:entry_type, :struct, BrokerAPI.Model.JournalEntryType)
     |> Deserializer.deserialize(:transmitter_timestamp, :datetime, nil)
  end
end
