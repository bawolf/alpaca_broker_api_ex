# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.NonTradeActivity do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :net_amount,
    :description,
    :status,
    :symbol,
    :qty,
    :per_share_amount
  ]

  @type t :: %__MODULE__{
    :date => Date.t | nil,
    :net_amount => String.t | nil,
    :description => String.t | nil,
    :status => String.t | nil,
    :symbol => String.t | nil,
    :qty => String.t | nil,
    :per_share_amount => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:date, :date, nil)
  end
end

