# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.BatchJournalRequest do
  @moduledoc """
  Journals API allows you to move cash or securities from one account to another.  This model represents the fields you can specify when creating a request of many Journals out of one account to many others at once.
  """

  @derive Jason.Encoder
  defstruct [
    :entry_type,
    :from_account,
    :description,
    :entries
  ]

  @type t :: %__MODULE__{
    :entry_type => String.t,
    :from_account => String.t,
    :description => String.t | nil,
    :entries => [BrokerAPI.Model.BatchJournalRequestEntriesInner.t]
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:entries, :list, BrokerAPI.Model.BatchJournalRequestEntriesInner)
  end
end

